import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hg_app_2/player/domain/track.dart';
import 'package:just_audio/just_audio.dart';

part 'app_audio_player.freezed.dart';

@freezed
class AppAudioPlayer with _$AppAudioPlayer {
  const AppAudioPlayer._();
  const factory AppAudioPlayer() = _AppAudioPlayer;

  static final AudioPlayer _audioPlayer = AudioPlayer();

  AudioPlayer get player => _audioPlayer;

  bool get isPlaying => _audioPlayer.playing;

  PlayerState get playerState => _audioPlayer.playerState;

  int get trackNumberPlaying => _audioPlayer.currentIndex !+ 1;
  Stream<Duration?> get duration => _audioPlayer.durationStream;
 
  Stream<Duration> get position => _audioPlayer.positionStream;
  Stream<int?> get currentIndexStream => _audioPlayer.currentIndexStream;

  Future<void> seekTrack(Track track) {
    return _audioPlayer.seek(
      Duration.zero,
      index: track.trackNumber - 1,
    );
  }
  Future<void> play() {
    return _audioPlayer.play();
  }
  Future<void> pause() {
    return _audioPlayer.pause();
  }
  Future<void> playNext() {
    return _audioPlayer.seekToNext();
  }
  Future<void> playPrevious() {
    return _audioPlayer.seekToPrevious();
  }
}



