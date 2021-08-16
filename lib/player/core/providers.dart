import 'package:audio_service/audio_service.dart';
import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/domain/app_audio_handler.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hg_app_2/plus/presentation/pages/acknowledgements_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final albumProvider = Provider<Album>(
  (ref) {
    Album album = LocalAlbumRepository().fetchAlbum();
    return album;
  },
);

final appAudioPlayerProvider = Provider<AppAudioPlayer>(
  (ref) {
    const AppAudioPlayer appAudioPlayer = AppAudioPlayer();

    final album = ref.watch(albumProvider);

    final audioSources = album.tracks.map((track) {
      return AudioSource.uri(
        Uri.parse('asset:///assets/${track.trackPath}'),
        tag: MediaItem(
          id: track.trackNumber.toString(),
          title: track.titleFR,
          artUri: Uri.parse('asset:///assets/images/${track.imagePath}'),
          album: 'Hänsel & Gretel',
        ),
      );
    }).toList();

    appAudioPlayer.player.setAudioSource(
      ConcatenatingAudioSource(
        children: [...audioSources],
      ),
    );

    ref.onDispose(() {
      appAudioPlayer.player.dispose();
    });

    return appAudioPlayer;
  },
);

final appAudioHandlerProvider = FutureProvider<AppAudioHandler>((ref) async {
  final AppAudioHandler _appAudioHandler =
      await initAudioService(ref.watch(appAudioPlayerProvider));
  final album = ref.watch(albumProvider);

  final mediaItems = album.tracks.map((track) {
    return MediaItem(
      id: track.trackNumber.toString(),
      title: track.titleFR,
      artUri: Uri.parse('asset:///assets/images/${track.imagePath}'),
      album: 'Hänsel & Gretel',
    );
  }).toList();

  _appAudioHandler.addQueueItems(mediaItems);
  _appAudioHandler.notifyAudioHandlerAboutPlaybackEvents();
  _appAudioHandler.listenForDurationChanges();
  _appAudioHandler.listenForCurrentSongIndexChanges();

  // void _listenToPlaybackState() {
  //   _appAudioHandler.playbackState.listen((playbackState) {
  //     final isPlaying = playbackState.playing;
  //     final processingState = playbackState.processingState;
  //     if (processingState == AudioProcessingState.loading ||
  //         processingState == AudioProcessingState.buffering) {
  //       playButtonNotifier.value = ButtonState.loading;
  //     } else if (!isPlaying) {
  //       playButtonNotifier.value = ButtonState.paused;
  //     } else if (processingState != AudioProcessingState.completed) {
  //       playButtonNotifier.value = ButtonState.playing;
  //     } else {
  //       _audioHandler.seek(Duration.zero);
  //       _audioHandler.pause();
  //     }
  //   });
  // }

  ref.onDispose(() {
    _appAudioHandler.stop();
  });

  return _appAudioHandler;
});

// ignore: top_level_function_literal_block
final appAudioPlayerNotifierProvider =
    StateNotifierProvider<AppAudioPlayerStateNotifier, AppAudioPlayerState>(
        (ref) {
  var appAudioPlayer = ref.watch(appAudioPlayerProvider);
  var album = ref.watch(albumProvider);
  var appAudioHandler = ref.watch(appAudioHandlerProvider).data?.value;
  AppAudioPlayerStateNotifier appAudioPlayerStateNotifier =
      AppAudioPlayerStateNotifier(
          appAudioPlayer: appAudioPlayer,
          album: album,
          appAudioHandler: appAudioHandler);

  appAudioPlayer.player.playbackEventStream.listen((PlaybackEvent event) {
    int trackNbr = appAudioPlayer.trackNumberPlaying;
    if (appAudioPlayer.isPlaying) {
      appAudioPlayerStateNotifier.setStateToPlay(album.fetchTrack(trackNbr));
    }
    if (!appAudioPlayer.isPlaying) {
      appAudioPlayerStateNotifier.setStateToPaused(album.fetchTrack(trackNbr));
    }
  });

  return appAudioPlayerStateNotifier;
});

final appAudioPlayerDuration =
    StreamProvider.autoDispose<Duration>((ref) async* {
  final appAudioPlayer = ref.watch(appAudioPlayerProvider);

  await for (final value in appAudioPlayer.duration) {
    if (value == null) {
    } else {
      yield value;
    }
  }
});

final appAudioPlayerPosition =
    StreamProvider.autoDispose<Duration>((ref) async* {
  final appAudioPlayer = ref.watch(appAudioPlayerProvider);
  await for (final value in appAudioPlayer.position) {
    yield value;
  }
});
