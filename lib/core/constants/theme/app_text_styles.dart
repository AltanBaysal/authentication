import 'package:authentication/core/_core_exports.dart';

class AppTextStyles {
  //Headlines
  static TextStyle title30BoldBlack = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.07),
  );

  static TextStyle title22Bold = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.055),
  );

  //Body

  static TextStyle body16Medium = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.04),
  );

  static TextStyle body16MediumLightBlue = body16Medium.copyWith(
    color: AppColors.lightBlue4,
  );

  static TextStyle body15Medium = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body15SemiBold = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body15Bold = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static TextStyle body14SemiBold = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.035),
  );

  static TextStyle body12Regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.032),
  );
}
