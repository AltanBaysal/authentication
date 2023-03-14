import 'package:authentication/core/_core_exports.dart';
import 'package:authentication/core/shared_widgets/error_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const ProviderScope(child: ChatAI()));
}

class ChatAI extends StatelessWidget {
  const ChatAI({super.key});

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
//SOLİD princible+
//flutterfire cli +
//Regexp +
//launcher icon+
//native splash screen+
//gmail facebook apple email auth
//hive
//functional programing +
//async programing
//auto login

//TODO
//validator view
//route problem and screensize util problem should be solved
