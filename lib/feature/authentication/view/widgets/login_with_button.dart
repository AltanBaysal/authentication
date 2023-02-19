import 'package:chat_ai/core/_core_exports.dart';

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({
    super.key,
    required this.icon,
    required this.height,
    required this.iconSize,
    this.onTap,
  });

  final String icon;
  final double height;
  final double iconSize;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey3, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        child: AppSvgPicture(
          height: iconSize,
          svg: icon,
        ),
      ),
    );
  }
}
