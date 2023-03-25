import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

class SignOutUsecase implements UseCase<void, NoParams> {
  final AuthenticationRepository authenticationRepository;

  SignOutUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return authenticationRepository.signOut(params);
  }
}
