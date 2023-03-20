import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

//TODO
class EmailLogInUsecase implements UseCase<UserCredential, EmailLogInParam> {
  final AuthenticationRepository authenticationRepository;

  EmailLogInUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(EmailLogInParam params) {
    return authenticationRepository.emailLogIn(params);
  }
}
