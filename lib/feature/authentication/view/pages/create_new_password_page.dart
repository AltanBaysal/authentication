import 'package:authentication/core/_core_exports.dart';

class CreateNewPasswordPage extends ConsumerWidget {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CreateNewPasswordProvider createNewPasswordProvider =
        ref.read(Providers.createNewPassword.notifier);
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
          onTap: createNewPasswordProvider.newPasswordObscuredToggle,
          textObscure:
              ref.watch(Providers.createNewPassword).isNewPasswordObscured,
          controller:
              createNewPasswordProvider.newPasswordTextEditingController,
          hintText: AppTexts.newPassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        if (createNewPasswordProvider.isResetPasswordButtonTriggered) ...[
          PasswordInputAreaError(
            isError: !createNewPasswordProvider.isNewPasswordValid,
            isEmpty: createNewPasswordProvider
                .newPasswordTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.02)),
        CustomPasswordTextField(
          onTap: createNewPasswordProvider.confirmPasswordObscuredToggle,
          textObscure:
              ref.watch(Providers.createNewPassword).isConfirmPasswordObscured,
          controller:
              createNewPasswordProvider.confirmNewPasswordTextEditingController,
          hintText: AppTexts.confirmpassword,
          height: sl<ScreenSize>().getHeightPercent(.072),
        ),
        if (createNewPasswordProvider.isResetPasswordButtonTriggered) ...[
          PasswordInputAreaError(
            isError: !createNewPasswordProvider.isConfirmPasswordValid,
            isEmpty: createNewPasswordProvider
                .confirmNewPasswordTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.04)),
        FilledLongButton(
          onTap: () {
            createNewPasswordProvider.setIsesetPasswordTriggeredTrue();
            createNewPasswordProvider.resetPassword();
          },
          text: AppTexts.resetPassword,
        ),
      ],
    );
  }
}
