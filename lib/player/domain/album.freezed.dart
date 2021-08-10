// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumTearOff {
  const _$AlbumTearOff();

  _Album call(
      {required String title,
      required String composer,
      required String libretist,
      required String releaseDate,
      required List<Track> tracks,
      required int numberOfActs,
      required Map<String, String> cast}) {
    return _Album(
      title: title,
      composer: composer,
      libretist: libretist,
      releaseDate: releaseDate,
      tracks: tracks,
      numberOfActs: numberOfActs,
      cast: cast,
    );
  }
}

/// @nodoc
const $Album = _$AlbumTearOff();

/// @nodoc
mixin _$Album {
  String get title => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  String get libretist => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  List<Track> get tracks => throw _privateConstructorUsedError;
  int get numberOfActs => throw _privateConstructorUsedError;
  Map<String, String> get cast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String composer,
      String libretist,
      String releaseDate,
      List<Track> tracks,
      int numberOfActs,
      Map<String, String> cast});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? composer = freezed,
    Object? libretist = freezed,
    Object? releaseDate = freezed,
    Object? tracks = freezed,
    Object? numberOfActs = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      libretist: libretist == freezed
          ? _value.libretist
          : libretist // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      numberOfActs: numberOfActs == freezed
          ? _value.numberOfActs
          : numberOfActs // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) then) =
      __$AlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String composer,
      String libretist,
      String releaseDate,
      List<Track> tracks,
      int numberOfActs,
      Map<String, String> cast});
}

/// @nodoc
class __$AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(_Album _value, $Res Function(_Album) _then)
      : super(_value, (v) => _then(v as _Album));

  @override
  _Album get _value => super._value as _Album;

  @override
  $Res call({
    Object? title = freezed,
    Object? composer = freezed,
    Object? libretist = freezed,
    Object? releaseDate = freezed,
    Object? tracks = freezed,
    Object? numberOfActs = freezed,
    Object? cast = freezed,
  }) {
    return _then(_Album(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      libretist: libretist == freezed
          ? _value.libretist
          : libretist // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      numberOfActs: numberOfActs == freezed
          ? _value.numberOfActs
          : numberOfActs // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_Album extends _Album {
  const _$_Album(
      {required this.title,
      required this.composer,
      required this.libretist,
      required this.releaseDate,
      required this.tracks,
      required this.numberOfActs,
      required this.cast})
      : super._();

  @override
  final String title;
  @override
  final String composer;
  @override
  final String libretist;
  @override
  final String releaseDate;
  @override
  final List<Track> tracks;
  @override
  final int numberOfActs;
  @override
  final Map<String, String> cast;

  @override
  String toString() {
    return 'Album(title: $title, composer: $composer, libretist: $libretist, releaseDate: $releaseDate, tracks: $tracks, numberOfActs: $numberOfActs, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Album &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.composer, composer) ||
                const DeepCollectionEquality()
                    .equals(other.composer, composer)) &&
            (identical(other.libretist, libretist) ||
                const DeepCollectionEquality()
                    .equals(other.libretist, libretist)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)) &&
            (identical(other.numberOfActs, numberOfActs) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfActs, numberOfActs)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(composer) ^
      const DeepCollectionEquality().hash(libretist) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(tracks) ^
      const DeepCollectionEquality().hash(numberOfActs) ^
      const DeepCollectionEquality().hash(cast);

  @JsonKey(ignore: true)
  @override
  _$AlbumCopyWith<_Album> get copyWith =>
      __$AlbumCopyWithImpl<_Album>(this, _$identity);
}

abstract class _Album extends Album {
  const factory _Album(
      {required String title,
      required String composer,
      required String libretist,
      required String releaseDate,
      required List<Track> tracks,
      required int numberOfActs,
      required Map<String, String> cast}) = _$_Album;
  const _Album._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get composer => throw _privateConstructorUsedError;
  @override
  String get libretist => throw _privateConstructorUsedError;
  @override
  String get releaseDate => throw _privateConstructorUsedError;
  @override
  List<Track> get tracks => throw _privateConstructorUsedError;
  @override
  int get numberOfActs => throw _privateConstructorUsedError;
  @override
  Map<String, String> get cast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumCopyWith<_Album> get copyWith => throw _privateConstructorUsedError;
}
