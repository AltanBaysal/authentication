import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class FacebookLoginUsecase implements UseCase<UserCredential, NoParams> {
  final AuthenticationRepository authenticationRepository;

  FacebookLoginUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(NoParams params) {
    return authenticationRepository.facebookLogIn(params);
  }
}
