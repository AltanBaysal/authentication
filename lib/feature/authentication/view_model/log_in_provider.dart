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

  bool get isFormValid {
    return (isEmailValid && isPasswordValid);
  }

  void emailLogIn() {
    logIn();
  }

  void facebookLogIn() {
    logIn();
  }

  void googleLogIn() {
    //GoogleAuth().singIn();
  }

  void appleLogIn() {
    logIn();
  }

  void logIn() {
    if (!isPasswordValid) return;
    RouteManager.pushNamed(AppRoutes.homePage);
  }
}
