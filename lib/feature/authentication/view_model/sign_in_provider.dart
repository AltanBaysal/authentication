import 'package:authentication/core/_core_exports.dart';

final signInProvider = StateProvider<SignInProvider>((ref) => SignInProvider());

class SignInProvider extends ChangeNotifier {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  void emailLogin() {}

  void facebookLogin() {}

  void googleLogin() {}

  void appleLogin() {}
}
