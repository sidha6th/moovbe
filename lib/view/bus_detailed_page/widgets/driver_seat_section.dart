import 'package:moovbe/extra/exports/exports.dart';

class DriverSeatSectionWidget extends StatelessWidget {
  const DriverSeatSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) => const SizedBox(
                width: 30,
                height: 35,
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) => index == 1
                  ? const Image(
                      image: AssetImage(
                        'assets/images/blackseat.png',
                      ),
                      width: 30,
                      height: 35,
                    )
                  : const SizedBox(
                      width: 30,
                      height: 35,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
