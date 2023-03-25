import 'package:authentication/core/_core_exports.dart';

class Providers {
  static final createNewPassword =
      ChangeNotifierProvider.autoDispose<CreateNewPasswordProvider>(
    (ref) => CreateNewPasswordProvider(),
  );
  static final forgotPassword =
      ChangeNotifierProvider.autoDispose<ForgotPasswordProvider>(
    (ref) => ForgotPasswordProvider(),
  );
  static final logIn = ChangeNotifierProvider.autoDispose<LogInProvider>(
    (ref) => LogInProvider(),
  );
  static final signIn = ChangeNotifierProvider.autoDispose<SignInProvider>(
    (ref) => SignInProvider(),
  );
  static final authentication = ChangeNotifierProvider<AuthenticationProvider>(
    (ref) => sl(),
  );
}
