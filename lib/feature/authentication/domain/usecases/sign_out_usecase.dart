import 'package:authentication/core/_core_exports.dart';

//TODO
class SignOutUsecase {
  Future<void> call() async {
    return await FirebaseAuth.instance.signOut();
  }
}
