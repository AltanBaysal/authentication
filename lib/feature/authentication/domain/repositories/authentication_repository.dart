import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserCredential>> emailLogIn();
  Future<Either<Failure, UserCredential>> emailSignIn();
  Future<Either<Failure, UserCredential>> facebookLogIn();
  Future<Either<Failure, UserCredential>> googleLogIn();
  Future<Either<Failure, UserCredential>> signOut();
  Future<Either<Failure, UserCredential>> twitterLogIn();
}
