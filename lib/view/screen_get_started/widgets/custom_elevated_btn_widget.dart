import 'package:moovbe/extra/exports/exports.dart';

class CustomElevatedBtnWidget extends StatelessWidget {
  const CustomElevatedBtnWidget({
    required this.btnText,
    required this.onpressed,
    this.btnTextColor = red,
    this.btnColor = white,
    Key? key,
  }) : super(key: key);
  final String btnText;
  final Function onpressed;
  final Color btnColor;
  final Color btnTextColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          btnColor,
        ),
      ),
      onPressed: () {
        onpressed();
      },
      child: CustomTextWidget(
        text: btnText,
        color: btnTextColor,
      ),
    );
  }
}
