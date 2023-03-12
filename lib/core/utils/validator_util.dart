import 'package:authentication/core/constants/_constants_exports.dart';

class ValidatorUtil {
  static String? emailValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      if (_regExpValidation(
        regExp: AppRegExps.email,
        value: value,
      )) return null;
    }
    return "a";
  }

  static String? passwordValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      if (_regExpValidation(
        regExp: AppRegExps.password,
        value: value,
      )) return null;
    }
    return "a";
  }

  static bool _regExpValidation({
    required String regExp,
    required String value,
  }) {
    RegExp regExp = RegExp(AppRegExps.password);
    return regExp.hasMatch(value);
  }
}
