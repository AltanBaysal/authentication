import 'package:authentication/core/_core_exports.dart';

class AuthBackButton extends StatelessWidget {
  const AuthBackButton({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: height ?? sl<ScreenSize>().getWidthPercent(.11),
        width: width ?? sl<ScreenSize>().getWidthPercent(.11),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey1, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: AppSvgPicture(
          height: sl<ScreenSize>().getWidthPercent(.045),
          svg: AppIconPaths.backArrow,
        ),
      ),
    );
  }
}
