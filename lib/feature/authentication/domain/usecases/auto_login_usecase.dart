import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class AutoLoginUsecase implements UseCase<UserCredential, NoParams> {
  final AuthenticationRepository authenticationRepository;

  AutoLoginUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(NoParams params) {
    return authenticationRepository.autoLogIn(params);
  }
}
