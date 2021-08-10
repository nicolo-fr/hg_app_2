import 'package:hg_app_2/player/application/app_audio_player_notifier.dart';
import 'package:hg_app_2/player/domain/album.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:hg_app_2/player/infrastructure/repositories/album_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appAudioPlayerProvider =
    Provider<AppAudioPlayer>((ref) {
      
      return const AppAudioPlayer();
    });

final albumProvider =
    Provider<Album>((ref) => LocalAlbumRepository().fetchAlbum());

// ignore: top_level_function_literal_block
final appAudioPlayerNotifierProvider =
    StateNotifierProvider<AppAudioPlayerStateNotifier, AppAudioPlayerState>(
        (ref) {
  // final album = LocalAlbumRepository().fetchAlbum();
  return AppAudioPlayerStateNotifier(ref.watch(appAudioPlayerProvider), ref.watch(albumProvider));
});

final appAudioPlayerDuration =
    StreamProvider.autoDispose<Duration>((ref) async* {
  final appAudioPlayer = ref.watch(appAudioPlayerProvider);
  await for (final value in appAudioPlayer.duration) {
    yield value;
  }
});

final appAudioPlayerPosition =
    StreamProvider.autoDispose<Duration>((ref) async* {
  final appAudioPlayer = ref.watch(appAudioPlayerProvider);
  await for (final value in appAudioPlayer.position) {
    yield value;
  }
});
