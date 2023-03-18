import 'package:authentication/core/_core_exports.dart';

//todo service locatordan al
class AuthenticationProvider extends ChangeNotifier {
  Future<void> signOut() async {
    await SignOutUsecase().call();
  }

  Future<void> emailSignIn() async {
    await EmailSignInUsecase().call();
    logIn();
  }

  Future<void> emailLogIn() async {
    await EmailLogInUsecase().call();
    logIn();
  }

  Future<void> facebookLogIn() async {
    await FacebookLoginUsecase().call();
    logIn();
  }

  Future<void> googleLogIn() async {
    await GoogleLoginUsecase().call();
    logIn();
  }

  Future<void> appleLogIn() async {
    await AppleLogInUsecase().call();
    logIn();
  }

  void logIn() {
    //RouteManager.pushReplacementNamed(AppRoutes.homePage);
  }
}
