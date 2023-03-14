import 'package:authentication/core/_core_exports.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteManager.pushNamed(AppRoutes.forgotPasswordPage);
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          AppTexts.forgotPassword,
          style: AppTextStyles.body14SemiBold.copyWith(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
