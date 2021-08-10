import 'package:dartz/dartz.dart';
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

  String get trackPath => '$trackNumber.flac';
  String get imagePath => 'assets/images/$trackNumber.jpeg';

}

// TODO: maybe. Add a ckeck that asset image exists
    // bool _hasImageAsset = false;

    // Future<bool> checkHasImageAsset(String path) async {
    //   try {
    //     await rootBundle.load(path);
    //     return _hasImageAsset = true;
    //   } catch (_) {
    //     return _hasImageAsset = false;
    //   }
    // }

    // checkHasImageAsset(track.trackPath);

    // ImageProvider getImageProvider() {
    //   if (_hasImageAsset) {
    //     return AssetImage(track.trackPath);
    //   }
    //   return const AssetImage('assets/images/1.jpeg');
    // }