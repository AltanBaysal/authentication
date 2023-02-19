import 'package:authentication/core/_core_exports.dart';

class AppSvgPicture extends StatelessWidget {
  const AppSvgPicture({
    super.key,
    required this.svg,
    this.height,
    this.color,
  });

  final String svg;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? sl<ScreenSize>().getWidthPercent(.045),
      width: height ?? sl<ScreenSize>().getWidthPercent(.045),
      child: SvgPicture.asset(
        svg,
        color: color,
        fit: BoxFit.contain,
      ),
    );
  }
}
