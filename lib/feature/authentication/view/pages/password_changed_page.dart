import 'package:chat_ai/core/_core_exports.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseAuthenticationPage(
      children: [
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.2)),
        AppSvgPicture(
          svg: AppIconPaths.nice,
          height: sl<ScreenSize>().getWidthPercent(.27),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
        Text(
          AppTexts.passwordChanged,
          style: AppTextStyles.title30BoldBlack,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.013)),
        SizedBox(
          width: sl<ScreenSize>().getWidthPercent(.6),
          child: Text(
            AppTexts.passwordChangedMessage,
            textAlign: TextAlign.center,
            style: AppTextStyles.body16MediumLightBlue,
          ),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.047)),
        FilledLongButton(
          onTap: () {},
          text: AppTexts.backToLogin,
        ),
      ],
    );
  }
}
