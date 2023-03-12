import 'package:authentication/core/_core_exports.dart';
import 'package:authentication/feature/authentication/view_model/authentication_provider.dart';

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
  static final signIn = ChangeNotifierProvider<SignInProvider>(
    (ref) => SignInProvider(),
  );
  static final authentication = ChangeNotifierProvider<AuthenticationProvider>(
    (ref) => AuthenticationProvider(),
  );
}
