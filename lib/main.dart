import 'package:authentication/core/_core_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await init();
  runApp(const ChatAI());
}

class ChatAI extends StatelessWidget {
  const ChatAI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      title: AppTexts.appName,
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ScreenSize>().screenSize = MediaQuery.of(context);
    return const PasswordChangedPage();
  }
}


//flutter theme
//auto login
//fonts
//provider
//clean architecture
//flutter routes
//dio
//functional programing
//async programing
//firebase
//gmail facebook apple email auth
//hive
