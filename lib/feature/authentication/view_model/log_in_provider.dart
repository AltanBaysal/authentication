import 'package:authentication/core/_core_exports.dart';

class LogInProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  bool isLoginButtonTriggered = false;
  void setIsLoginButtonTriggeredTrue() {
    isLoginButtonTriggered = true;
    notifyListeners();
  }

  bool isPasswordObscured = true;
  void passwordObscuredToggle() {
    isPasswordObscured = !isPasswordObscured;
    notifyListeners();
  }

  bool get isEmailValid {
    return ValidatorUtil.isEmailValid(eMailTextEditingController.text);
  }

  bool get isPasswordValid {
    return ValidatorUtil.isPasswordValid(passwordTextEditingController.text);
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
