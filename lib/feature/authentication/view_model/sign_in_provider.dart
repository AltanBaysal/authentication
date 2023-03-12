import 'package:authentication/core/_core_exports.dart';

class SignInProvider extends ChangeNotifier {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isPasswordObscured = false;
  bool isConfirmPasswordObscured = false;

  void passwordObscuredToggle() {
    isPasswordObscured = !isPasswordObscured;
    notifyListeners();
  }

  void confirmPasswordObscuredToggle() {
    isConfirmPasswordObscured = !isConfirmPasswordObscured;
    notifyListeners();
  }

  void emailSignIn() {}

  void facebookLogIn() {}

  void googleLogIn() {}

  void appleLogIn() {}
}
