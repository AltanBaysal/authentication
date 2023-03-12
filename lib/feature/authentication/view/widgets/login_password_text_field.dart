import 'package:authentication/core/_core_exports.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    required this.hintText,
    this.validator,
    this.textObscure = true,
    this.onChanged,
    this.onTap,
    this.controller,
    this.height,
  });

  final String hintText;
  final Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool textObscure;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      height: height,
      onChanged: onChanged,
      hintText: hintText,
      controller: controller,
      obscureText: textObscure,
      validator: validator,
      suffix: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AppSvgPicture(
            color: Colors.grey,
            svg: textObscure ? AppIconPaths.closedEye : AppIconPaths.openedEye,
          ),
        ),
      ),
    );
  }
}
