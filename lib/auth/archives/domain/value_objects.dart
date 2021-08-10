import 'package:dartz/dartz.dart';
import 'package:hg_app_2/auth/archives/core/failures.dart';
import 'package:hg_app_2/auth/archives/core/value_objects.dart';
import 'package:hg_app_2/auth/archives/core/value_validators.dart';



class EmailAddress extends ValueObject<String> {

  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {

  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}




