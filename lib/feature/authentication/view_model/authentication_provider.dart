import 'package:authentication/core/_core_exports.dart';

class AuthenticationProvider extends ChangeNotifier {
  Future<void> signOut() async {
    await SignOutUsecase().call();
  }

  Future<void> emailSignIn() async {
    await EmailSignInUsecase().call();
  }

  Future<void> emailLogIn() async {
    await EmailLogInUsecase().call();
    logIn();
  }

  Future<void> facebookLogIn() async {
    logIn();
  }

  Future<void> googleLogIn() async {
    await GoogleLoginUsecase().call();
    logIn();
  }

  Future<void> appleLogIn() async {
    logIn();
  }

  void logIn() {
    //RouteManager.pushReplacementNamed(AppRoutes.homePage);
  }
}
