// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_audio_player_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppAudioPlayerStateTearOff {
  const _$AppAudioPlayerStateTearOff();

  _Initial initial(Track track) {
    return _Initial(
      track,
    );
  }

  _Loading loading(Track track) {
    return _Loading(
      track,
    );
  }

  _Playing playing(Track track) {
    return _Playing(
      track,
    );
  }

  _Paused paused(Track track) {
    return _Paused(
      track,
    );
  }

  _Stopped stopped() {
    return const _Stopped();
  }

  _Failure failure(String message) {
    return _Failure(
      message,
    );
  }
}

/// @nodoc
const $AppAudioPlayerState = _$AppAudioPlayerStateTearOff();

/// @nodoc
mixin _$AppAudioPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAudioPlayerStateCopyWith<$Res> {
  factory $AppAudioPlayerStateCopyWith(
          AppAudioPlayerState value, $Res Function(AppAudioPlayerState) then) =
      _$AppAudioPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements $AppAudioPlayerStateCopyWith<$Res> {
  _$AppAudioPlayerStateCopyWithImpl(this._value, this._then);

  final AppAudioPlayerState _value;
  // ignore: unused_field
  final $Res Function(AppAudioPlayerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_Initial(
      track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  @override
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.track) : super._();

  @override
  final Track track;

  @override
  String toString() {
    return 'AppAudioPlayerState.initial(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(track);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return initial(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AppAudioPlayerState {
  const factory _Initial(Track track) = _$_Initial;
  const _Initial._() : super._();

  Track get track => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_Loading(
      track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  @override
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.track) : super._();

  @override
  final Track track;

  @override
  String toString() {
    return 'AppAudioPlayerState.loading(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(track);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return loading(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AppAudioPlayerState {
  const factory _Loading(Track track) = _$_Loading;
  const _Loading._() : super._();

  Track get track => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayingCopyWith<$Res> {
  factory _$PlayingCopyWith(_Playing value, $Res Function(_Playing) then) =
      __$PlayingCopyWithImpl<$Res>;
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$PlayingCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$PlayingCopyWith<$Res> {
  __$PlayingCopyWithImpl(_Playing _value, $Res Function(_Playing) _then)
      : super(_value, (v) => _then(v as _Playing));

  @override
  _Playing get _value => super._value as _Playing;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_Playing(
      track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  @override
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$_Playing extends _Playing {
  const _$_Playing(this.track) : super._();

  @override
  final Track track;

  @override
  String toString() {
    return 'AppAudioPlayerState.playing(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Playing &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(track);

  @JsonKey(ignore: true)
  @override
  _$PlayingCopyWith<_Playing> get copyWith =>
      __$PlayingCopyWithImpl<_Playing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return playing(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing extends AppAudioPlayerState {
  const factory _Playing(Track track) = _$_Playing;
  const _Playing._() : super._();

  Track get track => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlayingCopyWith<_Playing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
  $Res call({Track track});

  $TrackCopyWith<$Res> get track;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_Paused(
      track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  @override
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc

class _$_Paused extends _Paused {
  const _$_Paused(this.track) : super._();

  @override
  final Track track;

  @override
  String toString() {
    return 'AppAudioPlayerState.paused(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Paused &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(track);

  @JsonKey(ignore: true)
  @override
  _$PausedCopyWith<_Paused> get copyWith =>
      __$PausedCopyWithImpl<_Paused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return paused(track);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused extends AppAudioPlayerState {
  const factory _Paused(Track track) = _$_Paused;
  const _Paused._() : super._();

  Track get track => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PausedCopyWith<_Paused> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StoppedCopyWith<$Res> {
  factory _$StoppedCopyWith(_Stopped value, $Res Function(_Stopped) then) =
      __$StoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StoppedCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$StoppedCopyWith<$Res> {
  __$StoppedCopyWithImpl(_Stopped _value, $Res Function(_Stopped) _then)
      : super(_value, (v) => _then(v as _Stopped));

  @override
  _Stopped get _value => super._value as _Stopped;
}

/// @nodoc

class _$_Stopped extends _Stopped {
  const _$_Stopped() : super._();

  @override
  String toString() {
    return 'AppAudioPlayerState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped extends AppAudioPlayerState {
  const factory _Stopped() = _$_Stopped;
  const _Stopped._() : super._();
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$AppAudioPlayerStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AppAudioPlayerState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Track track) initial,
    required TResult Function(Track track) loading,
    required TResult Function(Track track) playing,
    required TResult Function(Track track) paused,
    required TResult Function() stopped,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Track track)? initial,
    TResult Function(Track track)? loading,
    TResult Function(Track track)? playing,
    TResult Function(Track track)? paused,
    TResult Function()? stopped,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Playing value)? playing,
    TResult Function(_Paused value)? paused,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends AppAudioPlayerState {
  const factory _Failure(String message) = _$_Failure;
  const _Failure._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
