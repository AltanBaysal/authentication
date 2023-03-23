import 'package:authentication/core/_core_exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseAuthenticationPage(
      children: [
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.3)),
        AppSvgPicture(
          svg: AppIconPaths.cuteWatermelon,
          height: sl<ScreenSize>().getWidthPercent(.35),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
        if (FirebaseAuth.instance.currentUser?.displayName != null) ...[
          Text(
            AppTexts.hi + FirebaseAuth.instance.currentUser!.displayName!,
            style: AppTextStyles.title30BoldBlack,
          ),
        ],
        Text(
          AppTexts.youSuccessfullyLogin,
          style: AppTextStyles.title30BoldBlack,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.037)),
        FilledLongButton(
          onTap: sl<AuthenticationProvider>().signOut,
          text: AppTexts.logOut,
        ),
      ],
    );
  }
}
