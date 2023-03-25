import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class TwitterLogInUsecase implements UseCase<UserCredential, NoParams> {
  final AuthenticationRepository authenticationRepository;

  TwitterLogInUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(NoParams params) {
    return authenticationRepository.twitterLogIn(params);
  }
}
