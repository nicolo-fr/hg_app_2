import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final appAudioPlayerProvider = FutureProvider<AppAudioPlayer>(
  (ref) async {
    const AppAudioPlayer appAudioPlayer = AppAudioPlayer();

    await appAudioPlayer.player.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(Uri.parse('asset:///assets/1.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/2.flac')),
          AudioSource.uri(Uri.parse('asset:///assets/3.flac')),
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
  AsyncValue<AppAudioPlayer> waitAppAudioPlayerProvider =
      ref.watch(appAudioPlayerProvider);
  AppAudioPlayer watchedAppAudioPlayerProvider = const AppAudioPlayer();
  waitAppAudioPlayerProvider.when(
      data: (value) => watchedAppAudioPlayerProvider = value,
      loading: () {},
      error: (o, s) {});
  return AppAudioPlayerStateNotifier(
      watchedAppAudioPlayerProvider, ref.watch(albumProvider));
});

// final appAudioPlayerNotifierProvider =
//     StateNotifierProvider<AppAudioPlayerStateNotifier, AppAudioPlayerState>(
//         (ref) {
//   // final album = LocalAlbumRepository().fetchAlbum();
//   return AppAudioPlayerStateNotifier(
//       ref.watch(appAudioPlayerProvider), ref.watch(albumProvider));
// });




// final appAudioPlayerDuration =
//     StreamProvider.autoDispose<Duration?>((ref) async* {
//   final appAudioPlayer = ref.watch(appAudioPlayerProvider);
//   await for (final value in appAudioPlayer.player.durationStream) {
//     yield value;
//   }
// });

// final appAudioPlayerPosition =
//     StreamProvider.autoDispose<Duration?>((ref) async* {
//   final appAudioPlayer = ref.watch(appAudioPlayerProvider);
//   await for (final value in appAudioPlayer.player.positionStream) {
//     yield value;
//   }
// });
