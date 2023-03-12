import 'package:authentication/core/_core_exports.dart';

class CreateNewPasswordPage extends ConsumerWidget {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseAuthenticationPage(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: AuthBackButton(),
          ),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.0288)),
        HeaderText(
          text: AppTexts.createNewPassword,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        HeaderText(
          text: AppTexts.createNewPasswordInfo,
          style: AppTextStyles.body16MediumLightBlue,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        CustomPasswordTextField(
          validator: ValidatorUtil.passwordValidator,
          onTap: ref
              .read(Providers.createNewPassword.notifier)
              .newPasswordObscuredToggle,
          textObscure:
              ref.watch(Providers.createNewPassword).isNewPasswordObscured,
          controller: ref
              .read(Providers.createNewPassword.notifier)
              .newPasswordTextEditingController,
          hintText: AppTexts.newPassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        CustomPasswordTextField(
          validator: ValidatorUtil.passwordValidator,
          onTap: ref
              .read(Providers.createNewPassword.notifier)
              .confirmPasswordObscuredToggle,
          textObscure:
              ref.watch(Providers.createNewPassword).isConfirmPasswordObscured,
          controller: ref
              .read(Providers.createNewPassword.notifier)
              .confirmNewPasswordTextEditingController,
          hintText: AppTexts.confirmpassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.04)),
        FilledLongButton(
          onTap: ref.read(Providers.createNewPassword.notifier).resetPassword,
          text: AppTexts.resetPassword,
        ),
      ],
    );
  }
}
