import 'package:chat_ai/core/_core_exports.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ScreenSize>().screenSize = MediaQuery.of(context);
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
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        LoginPasswordTextField(
          height: sl<ScreenSize>().getHeightPercent(.072),
          hintText: AppTexts.enterYourPassword,
          obscureText: true,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: ForgotPassword(),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        FilledLongButton(
          onTap: () {},
          text: AppTexts.login,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.035)),
        const LinedText(text: AppTexts.orLoginWith),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.025)),
        const LoginWithButtonsRow(),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.1)),
        const TextAndClickableText(
          text1: AppTexts.dontHaveAnAccount,
          text2: AppTexts.registerNow,
        ),
      ],
    );
  }
}
