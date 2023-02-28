import 'package:authentication/core/_core_exports.dart';

final logInProvider = StateProvider<LogInProvider>((ref) => LogInProvider());

class LogInProvider extends ChangeNotifier {
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  void emailLogin() {}

  void facebookLogin() {}

  void googleLogin() {}

  void appleLogin() {}
}
