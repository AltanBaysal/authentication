import 'package:authentication/core/_core_exports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ScreenSize>().screenSize = MediaQuery.of(context);
    Future.delayed(const Duration(milliseconds: 2000), () {
      RouteManager.pushNamed(AppRoutes.logInPage);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSvgPicture(
              svg: AppIconPaths.appLogoSvg,
              height: sl<ScreenSize>().getWidthPercent(.27),
            ),
            SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
