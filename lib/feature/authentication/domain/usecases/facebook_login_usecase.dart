import 'package:authentication/core/_core_exports.dart';

//TODO
class FacebookLoginUsecase {
  Future<UserCredential> call() async {
    final LoginResult result = await FacebookAuth.instance.login();

    final OAuthCredential credential = FacebookAuthProvider.credential(
      result.accessToken!.token,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
