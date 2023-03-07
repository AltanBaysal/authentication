import 'package:authentication/core/_core_exports.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAuthenticationPage(children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: AuthBackButton(),
        ),
      ),
      SizedBox(height: sl<ScreenSize>().getHeightPercent(.0288)),
      HeaderText(
        text: AppTexts.forgotPassword,
        style: AppTextStyles.title30BoldBlack,
        leftPadding: sl<ScreenSize>().getWidthPercent(.1),
      ),
      SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
      HeaderText(
        text: AppTexts.forgotPasswordMessage,
        style: AppTextStyles.body16MediumLightBlue,
      ),
      SizedBox(height: sl<ScreenSize>().getHeightPercent(.085)),
      CustomTextField(
        hintText: AppTexts.enterYourEmail,
        height: sl<ScreenSize>().getHeightPercent(.072),
        controller: ref
            .read(Providers.forgotPassword.notifier)
            .state
            .eMailTextEditingController,
      ),
      SizedBox(height: sl<ScreenSize>().getHeightPercent(.03)),
      FilledLongButton(
        onTap: () {
          ref.read(Providers.forgotPassword.notifier).state.sendCode();
        },
        text: AppTexts.sendCode,
      ),
      SizedBox(height: sl<ScreenSize>().getHeightPercent(.4)),
      TextAndClickableText(
        text1: AppTexts.rememberPassword,
        text2: AppTexts.login,
        onTap: () {
          RouteManager.pushNamed(AppRoutes.logInPage);
        },
      ),
    ]);
  }
}
