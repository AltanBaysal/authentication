import 'package:chat_ai/core/_core_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initFeatures();
  initCore();
  await initExternal();
}

Future<void> initFeatures() async {}

void initCore() {
  sl.registerLazySingleton<ScreenSize>(() => ScreenSize());
}

Future<void> initExternal() async {}
