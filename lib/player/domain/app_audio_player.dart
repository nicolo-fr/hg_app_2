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
      const Duration(milliseconds: 0),
      index: track.trackNumber - 1,
    );
  }
  Future<void> play() {
    return _audioPlayer.play();
  }
}


// @freezed
// class AppAudioPlayer with _$AppAudioPlayer {
//   const AppAudioPlayer._();
//   const factory AppAudioPlayer() = _AppAudioPlayer;

//   static final AudioPlayer _audioPlayer = AudioPlayer();
//   static final _audioCache = AudioCache(fixedPlayer: _audioPlayer);

 
//   AudioPlayer get audioPlayer => _audioPlayer;
//   AudioCache get audioCache => _audioCache;

  // Stream<Duration> get duration => _audioPlayer.onDurationChanged;
  // Stream<Duration> get position => _audioPlayer.onAudioPositionChanged;
//   Stream<void> get playerCompletionEvent => _audioPlayer.onPlayerCompletion;
// }

