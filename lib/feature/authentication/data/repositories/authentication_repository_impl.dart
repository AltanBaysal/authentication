import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo networkInfo;

  AuthenticationRepositoryImpl({
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, void>> signOut(NoParams params) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    return _errorHandler<void>(
      () async {
        return Right(FirebaseAuth.instance.signOut());
      },
    );
  }

  @override
  Future<Either<Failure, UserCredential>> emailLogIn(
    EmailLogInParam params,
  ) async {
    return _errorHandler<UserCredential>(
      () async {
        if (!await networkInfo.isConnected) {
          return Left(NoInternetConnectionFailure());
        }
        final UserCredential credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );
        return Right(credential);
      },
    );
  }

  @override
  Future<Either<Failure, UserCredential>> emailSignIn(
    EmailSignInParam params,
  ) async {
    return _errorHandler<UserCredential>(
      () async {
        if (!await networkInfo.isConnected) {
          return Left(NoInternetConnectionFailure());
        }
        final UserCredential credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );
        return Right(credential);
      },
    );
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
    return _errorHandler<UserCredential>(
      () async {
        final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication gAuth = await gUser!.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );

        return _firebaseCredentialLogIn(credential);
      },
    );
  }

  @override
  Future<Either<Failure, UserCredential>> twitterLogIn(NoParams params) async {
    return _errorHandler<UserCredential>(() async {
      //TODO unimplemented
      throw UnimplementedError();
      //return _firebaseCredentialLogIn(credential);
    });
  }

  @override
  Future<Either<Failure, UserCredential>> autoLogIn(NoParams params) async {
    return _errorHandler<UserCredential>(() async {
      //TODO unimplemented
      throw UnimplementedError();
    });
  }

  Future<Either<Failure, UserCredential>> _firebaseCredentialLogIn(
    AuthCredential credential,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    return Right(
      await FirebaseAuth.instance.signInWithCredential(credential),
    );
  }

  Future<Either<Failure, T>> _errorHandler<T>(
    Future<Either<Failure, T>> Function() func,
  ) async {
    try {
      return func();
    } on FirebaseAuthException catch (e) {
      return Left(e.toFailure);
    } catch (e) {
      return Left(UnImplementedFailure());
    }
  }
}
