import 'package:authentication/core/_core_exports.dart';

class LinedText extends StatelessWidget {
  const LinedText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1.1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style: AppTextStyles.body14SemiBold.copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 1.1,
          ),
        ),
      ],
    );
  }
}
