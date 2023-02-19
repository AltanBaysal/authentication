import 'package:authentication/core/_core_exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.height,
    this.obscureText = true,
    this.onChanged,
    this.controller,
    this.suffix,
  });

  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffix;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.lightGrey2,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.lightGrey3,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              obscureText: obscureText,
              onChanged: onChanged,
              controller: controller,
              decoration: InputDecoration(
                hintStyle: AppTextStyles.body15MediumLightBlue,
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
          if (suffix != null) suffix!,
        ],
      ),
    );
  }
}
