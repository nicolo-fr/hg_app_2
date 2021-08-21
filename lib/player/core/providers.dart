import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/domain/app_audio_handler.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final albumProvider = Provider<Album>(
  (ref) {
    final Album album = LocalAlbumRepository().fetchAlbum();
    return album;
  },
);

final Provider<AppAudioPlayer> appAudioPlayerProvider =
    Provider<AppAudioPlayer>(
  (ref) {
    const AppAudioPlayer appAudioPlayer = AppAudioPlayer();

    final album = ref.watch(albumProvider);

    final audioSources = album.tracks.map((track) {
      return AudioSource.uri(
        Uri.parse('asset:///assets/${track.trackPath}'),
        tag: MediaItem(
          id: track.trackNumber.toString(),
          title: track.titleDE,
          artUri: Uri.parse('asset:///${track.imagePath}'),
          album: 'Hänsel & Gretel',
        ),
      );
    }).toList();

    appAudioPlayer.player.setAudioSource(
      ConcatenatingAudioSource(
        children: [...audioSources],
      ),
    );

    ref.onDispose(
      () {
        appAudioPlayer.player.dispose();
      },
    );

    return appAudioPlayer;
  },
);

final appAudioHandlerProvider = FutureProvider<AppAudioHandler>(
  (ref) async {
    final AppAudioHandler _appAudioHandler =
        await initAudioService(ref.watch(appAudioPlayerProvider));
    final album = ref.watch(albumProvider);

    final mediaItems = album.tracks.map((track) {
      return MediaItem(
        id: track.trackNumber.toString(),
        title: track.titleDE,
        artUri: Uri.parse('asset:///${track.imagePath}'),
        album: 'Hänsel & Gretel',
      );
    }).toList();

    _appAudioHandler.addQueueItems(mediaItems);
    _appAudioHandler.notifyAudioHandlerAboutPlaybackEvents();
    _appAudioHandler.listenForDurationChanges();
    _appAudioHandler.listenForCurrentSongIndexChanges();

    ref.onDispose(
      () {
        _appAudioHandler.stop();
      },
    );

    return _appAudioHandler;
  },
);

// ignore: top_level_function_literal_block
final appAudioPlayerNotifierProvider =
    StateNotifierProvider<AppAudioPlayerStateNotifier, AppAudioPlayerState>(
  (ref) {
    final appAudioPlayer = ref.watch(appAudioPlayerProvider);
    final album = ref.watch(albumProvider);
    final appAudioHandler = ref.watch(appAudioHandlerProvider).data?.value;
    final AppAudioPlayerStateNotifier appAudioPlayerStateNotifier =
        AppAudioPlayerStateNotifier(
            appAudioPlayer: appAudioPlayer,
            album: album,
            appAudioHandler: appAudioHandler);

    final Track trackPlaying = album.fetchTrack(appAudioPlayer.trackNumberPlaying);
    appAudioPlayerStateNotifier
        .listenToPlayerStateAndUpdateAppState(trackPlaying);

    return appAudioPlayerStateNotifier;
  },
);

final appAudioPlayerDuration = StreamProvider.autoDispose<Duration>(
  (ref) async* {
    final appAudioPlayer = ref.watch(appAudioPlayerProvider);

    await for (final value in appAudioPlayer.duration) {
      if (value == null) {
      } else {
        yield value;
      }
    }
  },
);

final appAudioPlayerPosition = StreamProvider.autoDispose<Duration>(
  (ref) async* {
    final appAudioPlayer = ref.watch(appAudioPlayerProvider);
    await for (final value in appAudioPlayer.position) {
      yield value;
    }
  },
);

double getTopPaddingHeight(BuildContext context) {
  final deviceHeight = MediaQuery.of(context).size.height;
  double topPaddingHeight = deviceHeight * 0.09;
  return topPaddingHeight;
}
double getBottomStickyPlayerHeight() {
  const double bottomStickyPlayerHeight = 68;
  return bottomStickyPlayerHeight;
}
