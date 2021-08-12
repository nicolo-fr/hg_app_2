import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hg_app_2/player/domain/track.dart';

part 'album.freezed.dart';

@freezed
class Album with _$Album {
  const Album._();
  const factory Album({
    required String title,
    required String composer,
    required String libretist,
    required String releaseDate,
    required List<Track> tracks,
    required int numberOfActs,
    required Map<String, String> cast,
  }) = _Album;

  int get length => tracks.length;

  // Track fetchTrack1() {
  //   return tracks[0];
  // }

  Track fetchTrack(int trackNumber) {
    return tracks[trackNumber - 1];
  }

  Track fetchTrackAtIndex(int? index) {
    return tracks.firstWhere((track) => track.trackNumber == index !+ 1 ) ; 
  }

  bool isLastTrack(Track track) {
    final lastTrack = tracks[tracks.length - 1];
    return lastTrack == track;
  }

  Track fetchNextTrack(Track trackPlaying) {
    return tracks.firstWhere(
      (track) => track.trackNumber == (trackPlaying.trackNumber + 1),
    );
  }

  Track fetchPreviousTrack(Track trackPlaying) {
    return tracks.firstWhere(
      (track) => track.trackNumber == (trackPlaying.trackNumber - 1),
    );
  }

  List<Track> fetchTracksForAct(int actNumber) {
    return tracks
        .where(
          (track) => track.act == actNumber,
        )
        .toList();
  }

  // tracksList: TracksRepository.tracks
  //       .where((element) => element.act == 2)
  //       .toList(),
}
