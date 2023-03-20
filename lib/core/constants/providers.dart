import 'package:authentication/core/_core_exports.dart';

class Providers {
  static final createNewPassword =
      ChangeNotifierProvider<CreateNewPasswordProvider>(
    (ref) => sl(),
  );
  static final forgotPassword = ChangeNotifierProvider<ForgotPasswordProvider>(
    (ref) => sl(),
  );
  static final logIn = ChangeNotifierProvider<LogInProvider>(
    (ref) => sl(),
  );
  static final signIn = ChangeNotifierProvider<SignInProvider>(
    (ref) => sl(),
  );
  static final authentication = ChangeNotifierProvider<AuthenticationProvider>(
    (ref) => sl(),
  );
}
