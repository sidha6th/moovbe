import 'package:moovbe/extra/exports/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const TopStackWelcomeWidget(),
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
            onpressed: () {
              final connectionStatus = InternetConnectionChecker();
              connectionStatus.hasConnection.then(
                (bool value) => value == true
                    ? LoginController.login(
                        LoginState.userNameController.text,
                        LoginState.passWordController.text,
                      ).then(
                        (LoginModel? data) =>
                            (data != null && data.status == true)
                                ? {
                                    LoginController.saveToken(
                                            logData: data, isLog: true)
                                        .then(
                                      (value) => Get.offAll(
                                        const HomeLayout(),
                                      ),
                                    ),
                                  }
                                : Fluttertoast.showToast(
                                    msg: "Login Failed",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM_RIGHT,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: black,
                                    textColor: white,
                                    fontSize: 16.0,
                                  ),
                      )
                    : Fluttertoast.showToast(
                        msg: "Please check your Internet Connection",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM_RIGHT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: black,
                        textColor: white,
                        fontSize: 16.0,
                      ),
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
