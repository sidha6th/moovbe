import 'package:moovbe/extra/exports/exports.dart';

class TopStackWelcomeWidget extends StatelessWidget {
  const TopStackWelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      width: double.infinity,
      height: context.getSize().height * 0.4,
      child: Stack(
        children: <Widget>[
          Transform.rotate(
            angle: pi * 0.30,
            child: Container(
              width: context.getSize().height * 0.4,
              height: double.infinity,
              color: red,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Column(
              children: const <Widget>[
                CustomTextWidget(
                  text: 'Welcome',
                  weight: FontWeight.bold,
                  color: white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Sample extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = red
//       ..style = PaintingStyle.fill;
//       //canvas.drawPoints(PointMode.points, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
