import 'package:moovbe/extra/exports/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const ColoredBox(
            color: black,
            child: TopStackWelcomeWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(
              context.getSize().width * 0.1,
            ),
            child: Column(
              children: <Widget>[
                CustomTextFieldWidget(
                  controller: LoginState.userNameController,
                  hintText: 'Enter Username',
                ),
                space10,
                CustomTextFieldWidget(
                  controller: LoginState.passWordController,
                  hintText: 'Enter Password',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: CustomElevatedBtnWidget(
            btnText: 'Login',
            onpressed: () async {
              final data = await LoginController.login(
                LoginState.userNameController.text,
                LoginState.passWordController.text,
              );
              (data != null && data.status == true)
                  ? {
                      LoginController.saveToken(data),
                      Get.offAll(
                        const HomeLayout(),
                      ),
                    }
                  : debugPrint(
                      'login failed',
                    );
            },
            btnColor: red,
            btnTextColor: white,
          ),
        ),
      ),
    );
  }
}
