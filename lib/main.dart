import 'package:authentication/core/_core_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const ProviderScope(child: Authentication()));
}

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        sl<ScreenSize>().screenSize = MediaQuery.of(context);
        return child ?? const ErrorPage();
      },
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      title: AppTexts.appName,
      navigatorKey: GlobalContextKey.instance.globalKey,
      initialRoute: AppRoutes.base,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}


//riverpod +
//fonts +
//get it - dependency injection +
//clean architecture +
//flutter routes +
//firebase +
//open close +
//SOLİD princible +
//flutterfire cli +++
//Regexp +
//launcher icon +
//native splash screen +
//functional programing +
//async programing +
//gmail facebook twitter email auth +
//hive
//auto login

//todo
//look at svg
//update error dialog