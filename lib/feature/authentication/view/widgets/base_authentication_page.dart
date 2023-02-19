import 'package:chat_ai/core/_core_exports.dart';

class BaseAuthenticationPage extends StatelessWidget {
  const BaseAuthenticationPage({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            25,
            sl<ScreenSize>().getHeightPercent(.062),
            25,
            sl<ScreenSize>().getHeightPercent(.02),
          ),
          child: Column(children: children),
        ),
      ),
    );
  }
}
