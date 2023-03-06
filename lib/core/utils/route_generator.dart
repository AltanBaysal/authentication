import 'package:authentication/core/_core_exports.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments; //for argumented pages

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      case "/LogIn":
        return MaterialPageRoute(
          builder: (_) => const LogInPage(),
        );
      case "/SignIn":
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case "/ForgotPassword":
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordPage(),
        );
      case "/OTPVerification":
        return MaterialPageRoute(
          builder: (_) => const OTPVerificationPage(),
        );
      case "/CreateNewPassword":
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordPage(),
        );
      case "/PasswordChanged":
        return MaterialPageRoute(
          builder: (_) => const PasswordChangedPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      throw UnimplementedError(); //TODO error page eklenicek
    });
  }
}
