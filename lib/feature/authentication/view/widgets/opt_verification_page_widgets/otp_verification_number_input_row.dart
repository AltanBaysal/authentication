import 'package:authentication/core/_core_exports.dart';

class OTPVerificationNumberInputRow extends ConsumerWidget {
  const OTPVerificationNumberInputRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OTPVerificationNumberInput(
            controller: ref
                .read(Providers.forgotPassword.notifier)
                .oTP1TextEditingController,
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            controller: ref
                .read(Providers.forgotPassword.notifier)
                .oTP2TextEditingController,
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            controller: ref
                .read(Providers.forgotPassword.notifier)
                .oTP3TextEditingController,
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            controller: ref
                .read(Providers.forgotPassword.notifier)
                .oTP4TextEditingController,
            borderColor: AppColors.green,
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
        ],
      ),
    );
  }
}
