import 'package:authentication/core/_core_exports.dart';

class LoginWithButtonsRow extends ConsumerWidget {
  const LoginWithButtonsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: LoginWithButton(
            onTap: ref.read(Providers.logIn.notifier).state.facebookLogin,
            icon: AppIconPaths.facebook,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LoginWithButton(
            onTap: ref.read(Providers.logIn.notifier).state.googleLogin,
            icon: AppIconPaths.google,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LoginWithButton(
            onTap: ref.read(Providers.logIn.notifier).state.appleLogin,
            icon: AppIconPaths.apple,
            height: sl<ScreenSize>().getHeightPercent(.072),
            iconSize: sl<ScreenSize>().getHeightPercent(.03),
          ),
        ),
      ],
    );
  }
}
