import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_failure.freezed.dart';

@freezed
class TrackFailure with _$TrackFailure {
  const TrackFailure._();
  const factory TrackFailure.server([String? message]) = _Server;
  const factory TrackFailure.storage() = _Storage;
}