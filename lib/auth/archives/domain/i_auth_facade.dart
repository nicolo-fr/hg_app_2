import 'package:dartz/dartz.dart';
import 'package:hg_app_2/auth/archives/domain/auth_failure.dart';
import 'package:hg_app_2/auth/archives/domain/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  //TODO: implement sign in with facebook
}