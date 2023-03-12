import 'package:authentication/core/_core_exports.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          controller:
              ref.read(Providers.signIn.notifier).userNameTextEditingController,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomTextField(
          hintText: AppTexts.email,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller:
              ref.read(Providers.signIn.notifier).eMailTextEditingController,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          validator: ValidatorUtil.passwordValidator,
          onTap: ref.read(Providers.signIn.notifier).passwordObscuredToggle,
          textObscure: ref.watch(Providers.signIn).isPasswordObscured,
          hintText: AppTexts.password,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller:
              ref.read(Providers.signIn.notifier).passwordTextEditingController,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          validator: ValidatorUtil.passwordValidator,
          onTap:
              ref.read(Providers.signIn.notifier).confirmPasswordObscuredToggle,
          textObscure: ref.watch(Providers.signIn).isConfirmPasswordObscured,
          hintText: AppTexts.confirmpassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: ref
              .read(Providers.signIn.notifier)
              .confirmPasswordTextEditingController,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        FilledLongButton(
          onTap: ref.read(Providers.signIn.notifier).emailSignIn,
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
