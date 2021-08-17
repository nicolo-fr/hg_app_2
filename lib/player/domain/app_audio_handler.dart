import 'package:audio_service/audio_service.dart';
import 'package:hg_app_2/player/domain/app_audio_player.dart';
import 'package:just_audio/just_audio.dart';

Future<AppAudioHandler> initAudioService(AppAudioPlayer appAudioPlayer) async {
  return await AudioService.init(
    builder: () => AppAudioHandler(appAudioPlayer),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.mycompany.myapp.audio',
      androidNotificationChannelName: 'Audio Service Demo',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
    ),
  );
}

class AppAudioHandler extends BaseAudioHandler {
  final AppAudioPlayer appAudioPlayer;
  AppAudioHandler(this.appAudioPlayer);

  @override
  Future<void> play() => appAudioPlayer.play();
  @override
  Future<void> pause() => appAudioPlayer.pause();

  @override
  Future<void> playNext() => appAudioPlayer.player.seekToNext();
  @override
  Future<void> playPrevious() => appAudioPlayer.player.seekToPrevious();

  void notifyAudioHandlerAboutPlaybackEvents() {
    appAudioPlayer.player.playbackEventStream.listen((PlaybackEvent event) {
      final playing = appAudioPlayer.isPlaying;
      playbackState.add(playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (playing) MediaControl.pause else MediaControl.play,
          MediaControl.stop,
          MediaControl.skipToNext,
        ],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0, 1, 3],
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[appAudioPlayer.player.processingState]!,
        playing: playing,
        updatePosition: appAudioPlayer.player.position,
        queueIndex: event.currentIndex,
      ));
    });
  }

  @override
Future<void> addQueueItems(List<MediaItem> mediaItems) async {
  // notify system
  final newQueue = queue.value..addAll(mediaItems);
  queue.add(newQueue);
}

@override
Future<void> skipToQueueItem(int index) async {
  if (index < 0 || index >= queue.value.length) return;
  
  appAudioPlayer.player.seek(Duration.zero, index: index);
}

  void listenForDurationChanges() {
    appAudioPlayer.player.durationStream.listen((duration) {
      final index = appAudioPlayer.player.currentIndex;
      final newQueue = queue.value;
      if (index == null || newQueue.isEmpty) return;
      final oldMediaItem = newQueue[index];
      final newMediaItem = oldMediaItem.copyWith(duration: duration);
      newQueue[index] = newMediaItem;
      queue.add(newQueue);
      mediaItem.add(newMediaItem);
    });
  }

  void listenForCurrentSongIndexChanges() {
  appAudioPlayer.player.currentIndexStream.listen((index) {
    final playlist = queue.value;
    if (index == null || playlist.isEmpty) return;
    mediaItem.add(playlist[index]);
  });
}
}
