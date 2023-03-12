import 'package:authentication/core/_core_exports.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppSvgPicture(
              svg: AppIconPaths.cross,
              height: sl<ScreenSize>().getWidthPercent(.27),
            ),
            SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
            Text(
              AppTexts.somethingWentWrong,
              style: AppTextStyles.title30BoldBlack,
            ),
          ],
        ),
      ),
    );
  }
}
