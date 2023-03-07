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
          hintText: AppTexts.enterYourEmail,
          controller: ref
              .read(Providers.logIn.notifier)
              .state
              .eMailTextEditingController,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        LoginPasswordTextField(
          height: sl<ScreenSize>().getHeightPercent(.072),
          hintText: AppTexts.enterYourPassword,
          controller: ref
              .read(Providers.logIn.notifier)
              .state
              .passwordTextEditingController,
          obscureText: true,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: ForgotPassword(),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        FilledLongButton(
          onTap: ref.read(Providers.logIn.notifier).state.emailLogIn,
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
