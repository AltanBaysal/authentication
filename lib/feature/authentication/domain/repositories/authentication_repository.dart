import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  //signIn
  //TODO düzenlenecek
  Future<Either<Failure, User>> signInWithGoogle(NoParams params);
  Future<Either<Failure, User>> signInWithFacebook(NoParams params);
  Future<Either<Failure, User>> signInWithEmail(NoParams params);
  Future<Either<Failure, User>> signInWithApple(NoParams params);
}
