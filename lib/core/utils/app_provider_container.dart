import 'package:authentication/core/_core_exports.dart';

class AppProviderContainer {
  static ProviderContainer get instance => ProviderScope.containerOf(
        GlobalContextKey.instance.globalKey.currentContext!,
        listen: false,
      );
}
