import 'dart:math';

import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo networkInfo;

  AuthenticationRepositoryImpl({
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserCredential>> signOut(NoParams params) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> emailLogIn(
    EmailLogInParam params,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> emailSignIn(
    EmailSignInParam params,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> facebookLogIn(NoParams params) async {
    return _errorHandler<UserCredential>(() async {
      final LoginResult result = await FacebookAuth.instance.login();

      final OAuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken!.token,
      );

      return _firebaseCredentialLogIn(credential);
    });
  }

  @override
  Future<Either<Failure, UserCredential>> googleLogIn(NoParams params) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> twitterLogIn(NoParams params) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserCredential>> autoLogIn(NoParams params) async {
    throw UnimplementedError();
  }

  Future<Either<Failure, UserCredential>> _firebaseCredentialLogIn(
    AuthCredential credential,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    try {
      return Right(
        await FirebaseAuth.instance.signInWithCredential(credential),
      );
    } on FirebaseAuthException catch (e) {
      switch (e.message) {
        case "user-not-found":
          return Left(UserNotFoundFailure());
        case "wrong-password":
          return Left(WrongPasswordFailure());
        default:
          return Left(ServerFailure());
      }
    }
  }

  Future<Either<Failure, T>> _errorHandler<T>(
    Future<Either<Failure, T>> Function() func,
  ) async {
    try {
      return func();
    } catch (e) {
      return Left(UnImplementedFailure());
    }
  }
}
