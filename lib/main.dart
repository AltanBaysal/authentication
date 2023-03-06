import 'package:authentication/core/_core_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();
  runApp(const ProviderScope(child: ChatAI()));
}

class ChatAI extends StatelessWidget {
  const ChatAI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appName,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ScreenSize>().screenSize = MediaQuery.of(context);
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushNamed("/LogIn");
    });
    return const Scaffold(
      body: Center(child: Text("LandingPage")),
    );
  }
}


//riverpod +
//auto login
//fonts +
//get it - dependency injection +
//clean architecture +
//flutter routes +
//dio
//functional programing
//async programing
//firebase
//gmail facebook apple email auth
//hive

//TODO
//error and landing page will added