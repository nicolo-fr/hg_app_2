import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.isAuthenticated() = _IsAuthenticated;
  const factory AuthState.isNotAuthenticated() = _IsNotAuthenticated;
}