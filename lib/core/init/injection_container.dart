import 'package:authentication/core/_core_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initExternal();
  await initCore();
  await initFeatures();
}

Future<void> initFeatures() async {
  sl.registerLazySingleton<StateProvider<CreateNewPasswordProvider>>(
    () => StateProvider<CreateNewPasswordProvider>(
      (ref) => CreateNewPasswordProvider(),
    ),
  );
  sl.registerLazySingleton<StateProvider<ForgotPasswordProvider>>(
    () => StateProvider<ForgotPasswordProvider>(
      (ref) => ForgotPasswordProvider(),
    ),
  );
  sl.registerLazySingleton<StateProvider<LogInProvider>>(
    () => StateProvider<LogInProvider>(
      (ref) => LogInProvider(),
    ),
  );
  sl.registerLazySingleton<StateProvider<SignInProvider>>(
    () => StateProvider<SignInProvider>(
      (ref) => SignInProvider(),
    ),
  );
}

Future<void> initCore() async {
  sl.registerLazySingleton<ScreenSize>(() => ScreenSize());
}

Future<void> initExternal() async {}
