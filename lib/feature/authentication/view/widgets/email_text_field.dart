import 'package:authentication/core/_core_exports.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    this.controller,
    this.hintText = "",
    this.isTriggered = false,
  });

  final TextEditingController? controller;
  final String hintText;
  final bool isTriggered;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: hintText,
          height: sl<ScreenSize>().getHeightPercent(.072),
          controller: controller,
          obscureText: false,
        ),
        if (isTriggered) ...[]
      ],
    );
  }
}
