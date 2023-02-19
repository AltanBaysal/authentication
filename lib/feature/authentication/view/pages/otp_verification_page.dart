import 'package:chat_ai/core/_core_exports.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.04)),
        FilledLongButton(
          onTap: () {},
          text: AppTexts.verify,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.4)),
        const TextAndClickableText(
          text1: AppTexts.didntReceivedCode,
          text2: AppTexts.resend,
        ),
      ],
    );
  }
}
