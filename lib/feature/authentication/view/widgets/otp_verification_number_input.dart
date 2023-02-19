import 'package:chat_ai/core/_core_exports.dart';

class OTPVerificationNumberInput extends StatelessWidget {
  const OTPVerificationNumberInput({
    super.key,
    required this.dimension,
    required this.borderColor,
    this.onChanged,
  });

  final double dimension;
  final Color borderColor;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: dimension * 0.9,
      width: dimension,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: AppTextStyles.title22BoldBlack,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
