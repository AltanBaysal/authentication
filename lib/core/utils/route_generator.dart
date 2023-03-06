import 'package:authentication/core/_core_exports.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments; //for argumented pages

    switch (settings.name) {
      case AppRoutes.base:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      case AppRoutes.logInPage:
        return MaterialPageRoute(
          builder: (_) => const LogInPage(),
        );
      case AppRoutes.signInPage:
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case AppRoutes.forgotPasswordPage:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordPage(),
        );
      case AppRoutes.oTPVerificationPage:
        return MaterialPageRoute(
          builder: (_) => const OTPVerificationPage(),
        );
      case AppRoutes.createNewPasswordPage:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordPage(),
        );
      case AppRoutes.passwordChangedPage:
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
