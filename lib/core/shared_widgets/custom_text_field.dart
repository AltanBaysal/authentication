import 'package:authentication/core/_core_exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText = "",
    this.height,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.suffix,
    this.color,
  });

  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Color? color;
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
          color: color ?? AppColors.lightGrey3,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                cursorColor: Colors.black,
                obscureText: obscureText,
                onChanged: onChanged,
                controller: controller,
                decoration: InputDecoration(
                  hintStyle: AppTextStyles.body15Medium.copyWith(
                    color: AppColors.lightBlue4,
                  ),
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          if (suffix != null) suffix!,
        ],
      ),
    );
  }
}
