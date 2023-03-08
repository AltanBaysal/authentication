import 'package:authentication/core/_core_exports.dart';

class Providers {
  static final createNewPassword =
      ChangeNotifierProvider<CreateNewPasswordProvider>(
    (ref) => CreateNewPasswordProvider(),
  );
  static final forgotPassword = ChangeNotifierProvider<ForgotPasswordProvider>(
    (ref) => ForgotPasswordProvider(),
  );
  static final logIn = ChangeNotifierProvider<LogInProvider>(
    (ref) => LogInProvider(),
  );
  static final signInProvider = ChangeNotifierProvider<SignInProvider>(
    (ref) => SignInProvider(),
  );
}
