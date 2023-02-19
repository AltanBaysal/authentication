import 'package:chat_ai/core/_core_exports.dart';

class OTPVerificationNumberInputRow extends StatelessWidget {
  const OTPVerificationNumberInputRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OTPVerificationNumberInput(
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            borderColor: AppColors.green,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
          OTPVerificationNumberInput(
            borderColor: AppColors.green,
            dimension: sl<ScreenSize>().getHeightPercent(.08),
          ),
        ],
      ),
    );
  }
}
