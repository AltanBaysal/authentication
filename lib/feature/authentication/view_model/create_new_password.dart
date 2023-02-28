import 'package:authentication/core/_core_exports.dart';

final createNewPasswordProvider = StateProvider<CreateNewPasswordProvider>(
    (ref) => CreateNewPasswordProvider());

class CreateNewPasswordProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();

  void sendCode() {}
}
