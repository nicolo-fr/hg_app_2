import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

final appAudioPlayerProvider = Provider<AppAudioPlayer>(
  (ref) {
    const AppAudioPlayer appAudioPlayer = AppAudioPlayer();

    appAudioPlayer.player.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(
            Uri.parse('asset:///assets/1.flac'),
            tag: MediaItem(
              id: '1',
              album: "Hansel & Gretel",
              title: "1",
              artUri: Uri.parse('asset:///assets/images/1.jpeg'),
            ),
          ),
          AudioSource.uri(Uri.parse('asset:///assets/2.flac'), tag: MediaItem(
              id: '2',
              album: "Hansel & Gretel",
              title: "2",
              artUri: Uri.parse('asset:///assets/images/2.jpeg'),
            ),),
          AudioSource.uri(Uri.parse('asset:///assets/3.flac'), tag: MediaItem(
              id: '3',
              album: "Hansel & Gretel",
              title: "3",
              artUri: Uri.parse('asset:///assets/images/3.jpeg'),
            ),),
          AudioSource.uri(Uri.parse('asset:///assets/4.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/5.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/6.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/7.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/8.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/9.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/10.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/11.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/12.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/13.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/14.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/15.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/16.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/17.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/18.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/19.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/20.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/21.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/22.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/23.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/24.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/25.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/26.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/27.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/28.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/29.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/30.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/31.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/32.flac')),
        ],
      ),
    );

    ref.onDispose(() {
      appAudioPlayer.player.dispose();
    });

    return appAudioPlayer;
  },
);

final albumProvider =
    Provider<Album>((ref) => LocalAlbumRepository().fetchAlbum());

// ignore: top_level_function_literal_block
final appAudioPlayerNotifierProvider =
    StateNotifierProvider<AppAudioPlayerStateNotifier, AppAudioPlayerState>(
        (ref) {
  return AppAudioPlayerStateNotifier(
      ref.watch(appAudioPlayerProvider), ref.watch(albumProvider));
});

final appAudioPlayerDuration =
    StreamProvider.autoDispose<Duration>((ref) async* {
  final appAudioPlayer = ref.watch(appAudioPlayerProvider);
  Duration _duration = Duration.zero;

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
