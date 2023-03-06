import 'package:authentication/core/_core_exports.dart';

class CreateNewPasswordProvider extends ChangeNotifier {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();

  void resetPassword() {}
}
