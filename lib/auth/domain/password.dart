import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const Password._();
  const factory Password({
    required String password,
  }) = _Password;

  bool verifyPassword(String userInput) {
    return userInput == password;
  }
}