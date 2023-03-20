import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class GoogleLoginUsecase implements UseCase<UserCredential, NoParams> {
  final AuthenticationRepository authenticationRepository;

  GoogleLoginUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(NoParams params) {
    return authenticationRepository.googleLogIn(params);
  }
}
