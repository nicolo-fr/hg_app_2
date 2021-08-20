import 'package:freezed_annotation/freezed_annotation.dart';

part 'track.freezed.dart';

@freezed
class Track with _$Track {
  const Track._();

  const factory Track({
    required int trackNumber,
    required int act,
    required int scene,
    required String titleDE,
    required String titleFR,
    List<String>? librettoDE,
    List<String>? librettoFR,
    List<String>? commentary,
  }) = _Track;

  String get trackPath => '$trackNumber.mp3';
  String get imagePath => 'assets/images/$trackNumber.jpeg';

}
