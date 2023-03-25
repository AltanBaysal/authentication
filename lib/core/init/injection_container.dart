import 'package:authentication/core/_core_exports.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initExternal();
  await initCore();
  await initFeatures();
}

Future<void> initFeatures() async {
  //providers
  sl.registerLazySingleton<AuthenticationProvider>(
    () => AuthenticationProvider(
      autoLoginUsecase: sl(),
      emailLogInUsecase: sl(),
      emailSignInUsecase: sl(),
      facebookLoginUsecase: sl(),
      googleLoginUsecase: sl(),
      signOutUsecase: sl(),
      twitterLogInUsecase: sl(),
    ),
  );

  //usecases
  sl.registerLazySingleton<AutoLoginUsecase>(() => AutoLoginUsecase(sl()));

  sl.registerLazySingleton<EmailLogInUsecase>(() => EmailLogInUsecase(sl()));

  sl.registerLazySingleton<EmailSignInUsecase>(() => EmailSignInUsecase(sl()));

  sl.registerLazySingleton<FacebookLoginUsecase>(
    () => FacebookLoginUsecase(sl()),
  );

  sl.registerLazySingleton<GoogleLoginUsecase>(() => GoogleLoginUsecase(sl()));

  sl.registerLazySingleton<SignOutUsecase>(() => SignOutUsecase(sl()));

  sl.registerLazySingleton<TwitterLogInUsecase>(
    () => TwitterLogInUsecase(sl()),
  );

  //repository
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(networkInfo: sl()),
  );
}

Future<void> initCore() async {
  sl.registerLazySingleton<ScreenSize>(() => ScreenSize());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> initExternal() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  sl.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );
}
