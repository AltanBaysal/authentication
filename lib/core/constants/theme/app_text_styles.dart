import 'package:chat_ai/core/_core_exports.dart';

class AppTextStyles {
  //Headlines
  static TextStyle title30BoldBlack = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.07),
  );

  //Body
  static TextStyle title22BoldBlack = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.055),
  );

  static TextStyle body16MediumLightBlue = TextStyle(
    fontFamily: "Urbanist",
    color: AppColors.lightBlue4,
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.04),
  );

  static TextStyle body15MediumLightBlue = TextStyle(
    fontFamily: "Urbanist",
    color: AppColors.lightBlue4,
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body14SemiBoldGrey = TextStyle(
    fontFamily: "Urbanist",
    color: AppColors.grey,
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.035),
  );

  static TextStyle body15SemiBoldWhite = TextStyle(
    fontFamily: "Urbanist",
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body15MediumBlack = TextStyle(
    fontFamily: "Urbanist",
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body15BoldGreen = TextStyle(
    fontFamily: "Urbanist",
    color: AppColors.green,
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  //
}
