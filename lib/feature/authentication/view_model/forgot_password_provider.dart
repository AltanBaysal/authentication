import 'package:authentication/core/_core_exports.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();

  TextEditingController oTP1TextEditingController = TextEditingController();
  TextEditingController oTP2TextEditingController = TextEditingController();
  TextEditingController oTP3TextEditingController = TextEditingController();
  TextEditingController oTP4TextEditingController = TextEditingController();

  bool isSendCodeButtonTriggered = false;

  void setIsSendCodeButtonTriggeredTrue() {
    isSendCodeButtonTriggered = true;
    notifyListeners();
  }

  void sendCode() {}

  bool isVerifyButtonTriggered = false;
  void setIsVerifyButtonTriggeredTrue() {
    isVerifyButtonTriggered = true;
    notifyListeners();
  }

  bool get isEmailValid {
    return ValidatorUtil.isEmailValid(eMailTextEditingController.text);
  }

  bool get isOTPEmpty {
    return (oTP1TextEditingController.text.isEmpty ||
        oTP2TextEditingController.text.isEmpty ||
        oTP3TextEditingController.text.isEmpty ||
        oTP4TextEditingController.text.isEmpty);
  }

  void verify() {
    RouteManager.pushNamed(AppRoutes.createNewPasswordPage);
  }
}
