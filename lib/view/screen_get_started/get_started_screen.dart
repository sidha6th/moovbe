import 'package:moovbe/extra/exports/exports.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: const Center(
        child: Image(
          image: logoAsset,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          width: double.infinity,
          child: CustomElevatedBtnWidget(
            btnText: 'Get Started',
            onpressed: () {
              Get.off(
                const LoginScreen(),
              );
            },
            btnTextColor: red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
