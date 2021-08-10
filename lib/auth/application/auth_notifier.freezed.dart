// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _IsAuthenticated isAuthenticated() {
    return const _IsAuthenticated();
  }

  _IsNotAuthenticated isNotAuthenticated() {
    return const _IsNotAuthenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAuthenticated,
    required TResult Function() isNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAuthenticated,
    TResult Function()? isNotAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_IsNotAuthenticated value) isNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_IsNotAuthenticated value)? isNotAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$IsAuthenticatedCopyWith<$Res> {
  factory _$IsAuthenticatedCopyWith(
          _IsAuthenticated value, $Res Function(_IsAuthenticated) then) =
      __$IsAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$IsAuthenticatedCopyWith<$Res> {
  __$IsAuthenticatedCopyWithImpl(
      _IsAuthenticated _value, $Res Function(_IsAuthenticated) _then)
      : super(_value, (v) => _then(v as _IsAuthenticated));

  @override
  _IsAuthenticated get _value => super._value as _IsAuthenticated;
}

/// @nodoc

class _$_IsAuthenticated extends _IsAuthenticated {
  const _$_IsAuthenticated() : super._();

  @override
  String toString() {
    return 'AuthState.isAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAuthenticated,
    required TResult Function() isNotAuthenticated,
  }) {
    return isAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAuthenticated,
    TResult Function()? isNotAuthenticated,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_IsNotAuthenticated value) isNotAuthenticated,
  }) {
    return isAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_IsNotAuthenticated value)? isNotAuthenticated,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _IsAuthenticated extends AuthState {
  const factory _IsAuthenticated() = _$_IsAuthenticated;
  const _IsAuthenticated._() : super._();
}

/// @nodoc
abstract class _$IsNotAuthenticatedCopyWith<$Res> {
  factory _$IsNotAuthenticatedCopyWith(
          _IsNotAuthenticated value, $Res Function(_IsNotAuthenticated) then) =
      __$IsNotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsNotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$IsNotAuthenticatedCopyWith<$Res> {
  __$IsNotAuthenticatedCopyWithImpl(
      _IsNotAuthenticated _value, $Res Function(_IsNotAuthenticated) _then)
      : super(_value, (v) => _then(v as _IsNotAuthenticated));

  @override
  _IsNotAuthenticated get _value => super._value as _IsNotAuthenticated;
}

/// @nodoc

class _$_IsNotAuthenticated extends _IsNotAuthenticated {
  const _$_IsNotAuthenticated() : super._();

  @override
  String toString() {
    return 'AuthState.isNotAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsNotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAuthenticated,
    required TResult Function() isNotAuthenticated,
  }) {
    return isNotAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAuthenticated,
    TResult Function()? isNotAuthenticated,
    required TResult orElse(),
  }) {
    if (isNotAuthenticated != null) {
      return isNotAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_IsNotAuthenticated value) isNotAuthenticated,
  }) {
    return isNotAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_IsNotAuthenticated value)? isNotAuthenticated,
    required TResult orElse(),
  }) {
    if (isNotAuthenticated != null) {
      return isNotAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _IsNotAuthenticated extends AuthState {
  const factory _IsNotAuthenticated() = _$_IsNotAuthenticated;
  const _IsNotAuthenticated._() : super._();
}
