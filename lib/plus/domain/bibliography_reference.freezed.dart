// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bibliography_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BibliographyReferenceTearOff {
  const _$BibliographyReferenceTearOff();

  _BibliographyReference call({required String reference}) {
    return _BibliographyReference(
      reference: reference,
    );
  }
}

/// @nodoc
const $BibliographyReference = _$BibliographyReferenceTearOff();

/// @nodoc
mixin _$BibliographyReference {
  String get reference => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BibliographyReferenceCopyWith<BibliographyReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibliographyReferenceCopyWith<$Res> {
  factory $BibliographyReferenceCopyWith(BibliographyReference value,
          $Res Function(BibliographyReference) then) =
      _$BibliographyReferenceCopyWithImpl<$Res>;
  $Res call({String reference});
}

/// @nodoc
class _$BibliographyReferenceCopyWithImpl<$Res>
    implements $BibliographyReferenceCopyWith<$Res> {
  _$BibliographyReferenceCopyWithImpl(this._value, this._then);

  final BibliographyReference _value;
  // ignore: unused_field
  final $Res Function(BibliographyReference) _then;

  @override
  $Res call({
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BibliographyReferenceCopyWith<$Res>
    implements $BibliographyReferenceCopyWith<$Res> {
  factory _$BibliographyReferenceCopyWith(_BibliographyReference value,
          $Res Function(_BibliographyReference) then) =
      __$BibliographyReferenceCopyWithImpl<$Res>;
  @override
  $Res call({String reference});
}

/// @nodoc
class __$BibliographyReferenceCopyWithImpl<$Res>
    extends _$BibliographyReferenceCopyWithImpl<$Res>
    implements _$BibliographyReferenceCopyWith<$Res> {
  __$BibliographyReferenceCopyWithImpl(_BibliographyReference _value,
      $Res Function(_BibliographyReference) _then)
      : super(_value, (v) => _then(v as _BibliographyReference));

  @override
  _BibliographyReference get _value => super._value as _BibliographyReference;

  @override
  $Res call({
    Object? reference = freezed,
  }) {
    return _then(_BibliographyReference(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BibliographyReference extends _BibliographyReference {
  const _$_BibliographyReference({required this.reference}) : super._();

  @override
  final String reference;

  @override
  String toString() {
    return 'BibliographyReference(reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BibliographyReference &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reference);

  @JsonKey(ignore: true)
  @override
  _$BibliographyReferenceCopyWith<_BibliographyReference> get copyWith =>
      __$BibliographyReferenceCopyWithImpl<_BibliographyReference>(
          this, _$identity);
}

abstract class _BibliographyReference extends BibliographyReference {
  const factory _BibliographyReference({required String reference}) =
      _$_BibliographyReference;
  const _BibliographyReference._() : super._();

  @override
  String get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BibliographyReferenceCopyWith<_BibliographyReference> get copyWith =>
      throw _privateConstructorUsedError;
}
