import 'package:moovbe/extra/exports/exports.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    this.controller,
    required this.ontap,
    required this.hintText,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextEditingController? controller;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        ontap();
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        fillColor: const Color.fromARGB(225, 210, 202, 202),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    );
  }
}
