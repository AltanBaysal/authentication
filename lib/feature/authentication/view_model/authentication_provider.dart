import 'dart:developer';

import 'package:authentication/core/_core_exports.dart';
import 'package:dartz/dartz.dart';

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

  AuthenticationMode mode = AuthenticationMode.auth;

  Future<void> signOut() async {
    final resultEither = await signOutUsecase(NoParams());
    resultEither.fold(
      (l) {
        if (l.message != null) {
          _showSnackBar(l.message!);
        }
      },
      (r) {
        RouteManager.pushReplacementNamed(AppRoutes.logInPage);
      },
    );
  }

  Future<void> emailSignIn() async {
    _logIn(() async {
      final emailSignInParam = EmailSignInParam(
        email: "a@gmail.com",
        password: "123456",
      );
      return await emailSignInUsecase(emailSignInParam);
    });
  }

  Future<void> emailLogIn() async {
    _logIn(() async {
      final emailLogInParam = EmailLogInParam(email: "", password: "");
      return await emailLogInUsecase(emailLogInParam);
    });
  }

  Future<void> facebookLogIn() async {
    _logIn(() async {
      return await facebookLoginUsecase(NoParams());
    });
  }

  Future<void> googleLogIn() async {
    _logIn(() async {
      return await googleLoginUsecase(NoParams());
    });
  }

  Future<void> twitterLogIn() async {
    _logIn(() async {
      return await twitterLogInUsecase(NoParams());
    });
  }

  //
  Future<void> _logIn(
    Future<Either<Failure, UserCredential>> Function() func,
  ) async {
    mode = AuthenticationMode.inProgress;
    notifyListeners();
    _showLoadingDialog();

    final resultEither = await func();

    RouteManager.back();
    resultEither.fold(
      (left) {
        if (left.message != null) {
          _showSnackBar(left.message!);
        }
      },
      (right) {
        mode = AuthenticationMode.loggedIn;
        RouteManager.pushReplacementNamed(AppRoutes.homePage);
      },
    );
  }

  Future<void> _showLoadingDialog() async {
    await showDialog(
      context: GlobalContextKey.instance.globalKey.currentContext!,
      barrierDismissible: false,
      builder: (final _) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  Future<void> _showSnackBar(String text) async {
    ScaffoldMessenger.of(GlobalContextKey.instance.globalKey.currentContext!)
        .showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.only(bottom: 64),
        backgroundColor: AppColors.transparentRed,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        content: Container(
          height: sl<ScreenSize>().getHeightPercent(.04),
          width: sl<ScreenSize>().getWidthPercent(.3),
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTextStyles.body15SemiBold.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
