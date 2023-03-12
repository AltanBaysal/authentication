import 'package:authentication/core/_core_exports.dart';
import 'package:authentication/core/shared_widgets/error_page.dart';
import 'package:authentication/feature/authentication/view/pages/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
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
      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case AppRoutes.errorPage:
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const ErrorPage();
    });
  }
}
