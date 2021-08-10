
import 'package:audioplayers/audioplayers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_audio_player.freezed.dart';

@freezed
class AppAudioPlayer with _$AppAudioPlayer {
  const AppAudioPlayer._();
  const factory AppAudioPlayer() = _AppAudioPlayer;

  static final AudioPlayer _audioPlayer = AudioPlayer();
  static final _audioCache = AudioCache(fixedPlayer: _audioPlayer);

 
  AudioPlayer get audioPlayer => _audioPlayer;
  AudioCache get audioCache => _audioCache;

  Stream<Duration> get duration => _audioPlayer.onDurationChanged;
  Stream<Duration> get position => _audioPlayer.onAudioPositionChanged;
  Stream<void> get playerCompletionEvent => _audioPlayer.onPlayerCompletion;
}

