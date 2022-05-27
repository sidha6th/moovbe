import 'package:moovbe/extra/exports/exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      SplashController.checkUserLoggedInOrNot() == true
          ? const HomeLayout()
          : const GetStartedScreen();
}
