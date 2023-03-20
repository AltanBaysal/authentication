import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

//TODO
class EmailSignInUsecase implements UseCase<UserCredential, EmailSignInParam> {
  final AuthenticationRepository authenticationRepository;

  EmailSignInUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(EmailSignInParam params) {
    return authenticationRepository.emailSignIn(params);
  }
}
