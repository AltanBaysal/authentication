import 'package:authentication/core/_core_exports.dart';

class InputAreaError extends StatelessWidget {
  const InputAreaError({
    super.key,
    this.padding = EdgeInsets.zero,
    this.error = true,
    this.space = 5,
    this.iconSize,
    this.text = "",
  });

  final EdgeInsetsGeometry padding;
  final bool error;
  final String text;
  final double? space;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    if (!error) return const SizedBox.shrink();
    return Padding(
      padding: padding,
      child: Row(
        children: [
          AppSvgPicture(
            svg: AppIconPaths.error,
            height: iconSize ?? sl<ScreenSize>().getHeightPercent(0.016),
          ),
          SizedBox(width: space),
          Text(
            text,
            style: AppTextStyles.body12Regular.copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
