import 'package:authentication/core/_core_exports.dart';

//todo service locatordan al
class AuthenticationProvider extends ChangeNotifier {
  final SignOutUsecase signOutUsecase;
  final AutoLoginUsecase autoLoginUsecase;
  final EmailLogInUsecase emailLogInUsecase;
  final EmailSignInUsecase emailSignInUsecase;
  final FacebookLoginUsecase facebookLoginUsecase;
  final GoogleLoginUsecase googleLoginUsecase;
  final TwitterLogInUsecase twitterLogInUsecase;

  AuthenticationProvider({
    required this.signOutUsecase,
    required this.autoLoginUsecase,
    required this.emailLogInUsecase,
    required this.emailSignInUsecase,
    required this.facebookLoginUsecase,
    required this.googleLoginUsecase,
    required this.twitterLogInUsecase,
  });

  Future<void> signOut() async {
    final resultEither = await signOutUsecase(NoParams());
  }

  Future<void> emailSignIn() async {
    //TODO
    final emailSignInParam =
        EmailSignInParam(email: "a@gmail.com", password: "123456");
    final resultEither = await emailSignInUsecase(emailSignInParam);
  }

  Future<void> emailLogIn() async {
    //TODO
    final emailLogInParam = EmailLogInParam(email: "", password: "");
    final resultEither = await emailLogInUsecase(emailLogInParam);
  }

  Future<void> facebookLogIn() async {
    //TODO
    final resultEither = await facebookLoginUsecase(NoParams());
  }

  Future<void> googleLogIn() async {
    //TODO
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    /*
    final resultEither = await googleLoginUsecase(NoParams());
    */
  }

  Future<void> twitterLogIn() async {
    final resultEither = await twitterLogInUsecase(NoParams());
  }

  void logIn() {
    //RouteManager.pushReplacementNamed(AppRoutes.homePage);
  }
}
