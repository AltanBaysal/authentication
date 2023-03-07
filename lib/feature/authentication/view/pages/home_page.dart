import 'package:authentication/core/_core_exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseAuthenticationPage(
      children: [
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.3)),
        AppSvgPicture(
          svg: AppIconPaths.nice,
          height: sl<ScreenSize>().getWidthPercent(.27),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
        Text(
          AppTexts.youSuccessfullyLogin,
          style: AppTextStyles.title30BoldBlack,
        ),
      ],
    );
  }
}
