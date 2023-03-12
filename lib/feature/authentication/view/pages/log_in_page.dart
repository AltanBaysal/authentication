import 'package:authentication/core/_core_exports.dart';

class LogInPage extends ConsumerWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAuthenticationPage(
      children: [
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.123)),
        HeaderText(
          text: AppTexts.welcomebackGladToSeeYouAgain,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        CustomTextField(
          validator: ValidatorUtil.emailValidator,
          hintText: AppTexts.enterYourEmail,
          controller:
              ref.read(Providers.logIn.notifier).eMailTextEditingController,
          height: sl<ScreenSize>().getHeightPercent(.072),
          obscureText: false,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          validator: ValidatorUtil.passwordValidator,
          height: sl<ScreenSize>().getHeightPercent(.072),
          hintText: AppTexts.enterYourPassword,
          controller:
              ref.read(Providers.logIn.notifier).passwordTextEditingController,
          obscureText: ref.watch(Providers.logIn).isPasswordObscured,
          onTap: ref.read(Providers.logIn.notifier).isPasswordObscuredToggle,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: ForgotPassword(),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        FilledLongButton(
          onTap: ref.read(Providers.logIn.notifier).emailLogIn,
          text: AppTexts.login,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.035)),
        const LinedText(text: AppTexts.orLoginWith),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.025)),
        const LoginWithButtonsRow(),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.1)),
        TextAndClickableText(
          onTap: () {
            RouteManager.pushNamed(AppRoutes.signInPage);
          },
          text1: AppTexts.dontHaveAnAccount,
          text2: AppTexts.registerNow,
        ),
      ],
    );
  }
}
