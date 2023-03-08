import 'package:authentication/core/_core_exports.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({
    super.key,
    required this.hintText,
    this.obscureText = true,
    this.onChanged,
    this.onTap,
    this.controller,
    this.height,
  });

  final String hintText;
  final Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController? controller;
  final bool obscureText;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      height: height,
      onChanged: onChanged,
      hintText: hintText,
      controller: controller,
      obscureText: obscureText,
      suffix: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AppSvgPicture(
            color: Colors.grey,
            svg: obscureText ? AppIconPaths.closedEye : AppIconPaths.openedEye,
          ),
        ),
      ),
    );
  }
}
