import 'package:chat_ai/core/_core_exports.dart';

class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({super.key});

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
          text: AppTexts.createNewPassword,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        HeaderText(
          text: AppTexts.createNewPasswordInfo,
          style: AppTextStyles.body16MediumLightBlue,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        CustomTextField(
          hintText: AppTexts.newPassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        CustomTextField(
          hintText: AppTexts.confirmpassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.04)),
        FilledLongButton(
          onTap: () {},
          text: AppTexts.resetPassword,
        ),
      ],
    );
  }
}
