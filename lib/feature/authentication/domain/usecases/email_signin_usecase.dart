import 'package:authentication/core/_core_exports.dart';

//TODO
class EmailSignInUsecase {
  Future<UserCredential> call() async {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //TODO
      email: "ab@gmail.com",
      password: "123456",
    );
  }
}
