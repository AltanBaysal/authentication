import 'package:authentication/core/_core_exports.dart';

final forgotPasswordProvider =
    StateProvider<ForgotPasswordProvider>((ref) => ForgotPasswordProvider());

class ForgotPasswordProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();

  TextEditingController oTP1TextEditingController = TextEditingController();
  TextEditingController oTP2TextEditingController = TextEditingController();
  TextEditingController oTP3TextEditingController = TextEditingController();
  TextEditingController oTP4TextEditingController = TextEditingController();

  void sendCode() {}
  void verify() {}
}
