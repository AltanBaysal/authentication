import 'package:authentication/core/_core_exports.dart';

class TextAndClickableText extends StatelessWidget {
  const TextAndClickableText({
    super.key,
    this.style,
    this.onTap,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  final TextStyle? style;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text1,
          style: AppTextStyles.body15Medium.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: AppTextStyles.body15Bold.copyWith(
              color: AppColors.green,
            ),
          ),
        ),
      ],
    );
  }
}
