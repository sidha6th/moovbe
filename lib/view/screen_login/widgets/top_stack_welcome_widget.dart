import 'package:moovbe/extra/exports/exports.dart';

class TopStackWelcomeWidget extends StatelessWidget {
  const TopStackWelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getSize().height * 0.4,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Positioned.fill(
            top: -180,
            right: -180,
            bottom: 85,
            left: 130,
            child: Transform.rotate(
              angle: pi * 0.30,
              child: Container(
                color: red,
                width: double.infinity,
              ),
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
