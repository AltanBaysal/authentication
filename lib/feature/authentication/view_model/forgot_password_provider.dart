import 'package:authentication/core/_core_exports.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();

  TextEditingController oTP1TextEditingController = TextEditingController();
  TextEditingController oTP2TextEditingController = TextEditingController();
  TextEditingController oTP3TextEditingController = TextEditingController();
  TextEditingController oTP4TextEditingController = TextEditingController();

  void sendCode() {
    //Navigator.of(context).pushNamed(AppRoutes.oTPVerificationPage);
  }

  void verify() {}
}
