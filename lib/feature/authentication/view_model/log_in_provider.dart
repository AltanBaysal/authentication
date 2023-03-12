import 'package:authentication/core/_core_exports.dart';

class LogInProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  bool isPasswordObscured = false;

  void passwordObscuredToggle() {
    isPasswordObscured = !isPasswordObscured;
    notifyListeners();
  }

  void emailLogIn() {
    login();
  }

  void facebookLogIn() {
    login();
  }

  void googleLogIn() {
    login();
  }

  void appleLogIn() {
    login();
  }

  void login() {
    RouteManager.pushNamed(AppRoutes.homePage);
  }
}
