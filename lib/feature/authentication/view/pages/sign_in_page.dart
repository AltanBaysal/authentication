import 'package:authentication/core/_core_exports.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignInProvider signInProvider = ref.read(Providers.signIn.notifier);
    return BaseAuthenticationPage(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: AuthBackButton(),
          ),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.0288)),
        HeaderText(
          text: AppTexts.welcomebackGladToSeeYouAgain,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        CustomTextField(
          hintText: AppTexts.username,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: signInProvider.userNameTextEditingController,
        ),
        if (signInProvider.isSignInButtonTriggered) ...[
          EmailInputAreaError(
            isEmpty: signInProvider.userNameTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomTextField(
          hintText: AppTexts.email,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: signInProvider.eMailTextEditingController,
        ),
        if (signInProvider.isSignInButtonTriggered) ...[
          EmailInputAreaError(
            isError: !signInProvider.isEmailValid,
            isEmpty: signInProvider.eMailTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          onTap: signInProvider.passwordObscuredToggle,
          textObscure: ref.watch(Providers.signIn).isPasswordObscured,
          hintText: AppTexts.password,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: signInProvider.passwordTextEditingController,
        ),
        if (signInProvider.isSignInButtonTriggered) ...[
          PasswordInputAreaError(
            isError: !signInProvider.isPasswordValid,
            isEmpty: signInProvider.passwordTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          onTap: signInProvider.confirmPasswordObscuredToggle,
          textObscure: ref.watch(Providers.signIn).isConfirmPasswordObscured,
          hintText: AppTexts.confirmpassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: signInProvider.confirmPasswordTextEditingController,
        ),
        if (signInProvider.isSignInButtonTriggered) ...[
          PasswordInputAreaError(
            isError: !signInProvider.isConfirmPasswordValid,
            isEmpty: signInProvider
                .confirmPasswordTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        FilledLongButton(
          onTap: () {
            signInProvider.setIsSignInButtonTriggeredTrue();
            sl<AuthenticationProvider>().emailSignIn();
          },
          text: AppTexts.agreeAndRegister,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.035)),
        const LinedText(text: AppTexts.orLoginWith),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.025)),
        const LoginWithButtonsRow(),
      ],
    );
  }
}
