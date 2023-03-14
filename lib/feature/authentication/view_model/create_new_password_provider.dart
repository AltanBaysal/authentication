import 'package:authentication/core/_core_exports.dart';

class CreateNewPasswordProvider extends ChangeNotifier {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();

  bool isResetPasswordButtonTriggered = false;
  void setIsesetPasswordTriggeredTrue() {
    isResetPasswordButtonTriggered = true;
    notifyListeners();
  }

  bool isNewPasswordObscured = true;
  void newPasswordObscuredToggle() {
    isNewPasswordObscured = !isNewPasswordObscured;
    notifyListeners();
  }

  bool isConfirmPasswordObscured = true;
  void confirmPasswordObscuredToggle() {
    isConfirmPasswordObscured = !isConfirmPasswordObscured;
    notifyListeners();
  }

  bool get isNewPasswordValid {
    return ValidatorUtil.isEmailValid(newPasswordTextEditingController.text);
  }

  bool get isConfirmPasswordValid {
    return ValidatorUtil.isPasswordValid(
        confirmNewPasswordTextEditingController.text);
  }

  void resetPassword() {
    RouteManager.pushNamed(AppRoutes.passwordChangedPage);
  }
}
