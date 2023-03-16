import 'package:authentication/core/_core_exports.dart';

class LoginWithButtonsRow extends StatelessWidget {
  const LoginWithButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: LoginWithButton(
            icon: AppIconPaths.facebook,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LoginWithButton(
            onTap: () {},
            icon: AppIconPaths.google,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LoginWithButton(
            icon: AppIconPaths.apple,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
      ],
    );
  }
}
