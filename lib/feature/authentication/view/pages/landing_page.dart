import 'package:authentication/core/_core_exports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    //for reponse of request
    Future.delayed(const Duration(milliseconds: 2000), () {
      RouteManager.pushReplacementNamed(AppRoutes.logInPage);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: sl<ScreenSize>().getHeightPercent(.041)),
            AppSvgPicture(
              svg: AppIconPaths.happyWatermelon,
              height: sl<ScreenSize>().getWidthPercent(.32),
            ),
            SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
