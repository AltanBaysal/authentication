import 'package:authentication/core/_core_exports.dart';

class OTPVerificationPage extends ConsumerWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ForgotPasswordProvider forgotPasswordProvider =
        ref.read(Providers.forgotPassword.notifier);
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
          text: AppTexts.otpVerification,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        HeaderText(
          text: AppTexts.otpVerificationMessage,
          style: AppTextStyles.body16MediumLightBlue,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        const OTPVerificationNumberInputRow(),
        if (ref.watch(Providers.forgotPassword).isVerifyButtonTriggered) ...[
          const InputAreaError(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            text: AppTexts.required,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.04)),
        FilledLongButton(
          onTap: () {
            forgotPasswordProvider.setIsVerifyButtonTriggeredTrue();
            if (!forgotPasswordProvider.isOTPEmpty) {
              forgotPasswordProvider.verify();
            }
          },
          text: AppTexts.verify,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.4)),
        TextAndClickableText(
          onTap: forgotPasswordProvider.sendCode,
          text1: AppTexts.didntReceivedCode,
          text2: AppTexts.resend,
        ),
      ],
    );
  }
}
