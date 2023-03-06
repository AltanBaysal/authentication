import 'package:authentication/core/_core_exports.dart';

class Providers {
  static final createNewPassword = StateProvider<CreateNewPasswordProvider>(
    (ref) => CreateNewPasswordProvider(),
  );
  static final forgotPassword = StateProvider<ForgotPasswordProvider>(
    (ref) => ForgotPasswordProvider(),
  );
  static final logIn = StateProvider<LogInProvider>(
    (ref) => LogInProvider(),
  );
  static final signInProvider = StateProvider<SignInProvider>(
    (ref) => SignInProvider(),
  );
}
