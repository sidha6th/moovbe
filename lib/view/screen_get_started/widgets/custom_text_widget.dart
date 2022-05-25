import 'package:moovbe/extra/exports/exports.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    this.color = grey,
    this.weight = FontWeight.normal,
    this.fontSize,
    this.overflow=TextOverflow.ellipsis,
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  final Color color;
  final FontWeight weight;
  final double? fontSize;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
