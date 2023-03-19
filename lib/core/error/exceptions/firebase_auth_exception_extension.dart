import 'package:authentication/core/_core_exports.dart';

extension FirebaseAuthExceptionExtension on FirebaseAuthException {
  Failure get toFailure {
    switch (message) {
      case "user-not-found":
        return UserNotFoundFailure();
      case "wrong-password":
        return WrongPasswordFailure();
      case "invalid-email":
        return InvalidEmailFailure();
      case "user-disabled":
        return UserDisabledFailure();
      case "email-already-in-use":
        return EmailAlreadyInUseFailure();
      case "operation-not-allowed":
        return OperationNotAllowedFailure();
      case "weak-password":
        return WeakPasswordFailure();
      case "account-exists-with-different-credential":
        return AccountExistsWithDifferentCredentialFailure();
      case "invalid-credential":
        return InvalidCredentialFailure();
      case "invalid-verification-code":
        return InvalidVerificationCodeFailure();
      case "invalid-verification-id":
        return InvalidVerificationIDFailure();
      case "user-mismatch":
        return UserMismatchFailure();
      case "expired-action-code":
        return WrongPasswordFailure();
      default:
        throw UnImplementedFailure();
    }
  }
}
