import 'package:authentication/core/_core_exports.dart';

class RouteManager {
  static Future<T?>? pushNamed<T extends Object?>(
    String path, {
    Object? arguments,
  }) {
    ScaffoldMessenger.of(
      GlobalContextKey.instance.globalKey.currentContext!,
    ).clearSnackBars();
    return GlobalContextKey.instance.globalKey.currentState
        ?.pushNamed(path, arguments: arguments);
  }
}
