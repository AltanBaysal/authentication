import 'package:authentication/core/_core_exports.dart';

class CreateNewPasswordProvider extends ChangeNotifier {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();

  bool isNewPasswordObscured = true;
  bool isConfirmPasswordObscured = true;

  void newPasswordObscuredToggle() {
    isNewPasswordObscured = !isNewPasswordObscured;
    notifyListeners();
  }

  void confirmPasswordObscuredToggle() {
    isConfirmPasswordObscured = !isConfirmPasswordObscured;
    notifyListeners();
  }

  void resetPassword() {
    RouteManager.pushNamed(AppRoutes.passwordChangedPage);
  }
}
