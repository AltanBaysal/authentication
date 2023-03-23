import 'package:authentication/core/_core_exports.dart';

//Thrown if the password is invalid for the given email, or the account corresponding to the email doesn't have a password set.
class WrongPasswordFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => AppTexts.wrongPasswordOrEmail;
}

//Thrown if there is no user corresponding to the given email.
class UserNotFoundFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => AppTexts.wrongPasswordOrEmail;
}

//Thrown if the email address is not valid.
class InvalidEmailFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if there already exists an account with the given email address.
class EmailAlreadyInUseFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => AppTexts.emailAlreadyInUse;
}

//Thrown if the password is not strong enough.
class WeakPasswordFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => AppTexts.weakPassword;
}

//Thrown if the user corresponding to the given email or credential has been disabled
class UserDisabledFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if anonymous accounts are not enabled. Enable anonymous accounts in the Firebase Console, under the Auth tab.
class OperationNotAllowedFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if there already exists an account with the email address asserted by the credential.
class AccountExistsWithDifferentCredentialFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if the credential is malformed or has expired
class InvalidCredentialFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if the credential is a PhoneAuthProvider.credential and the verification code of the credential is not valid.
class InvalidVerificationCodeFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if the credential is a PhoneAuthProvider.credential and the verification ID of the credential is not valid.id.
class InvalidVerificationIDFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if the credential given does not correspond to the user.
class UserMismatchFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}

//Thrown if OTP in email link expires.
class ExpiredActionCodeFailure extends Failure {
  @override
  List<Object?> get props => [];

  @override
  String? get message => null;
}
