import 'package:moovbe/extra/exports/exports.dart';

class DriverSeatSectionWidget extends StatelessWidget {
  const DriverSeatSectionWidget({
    required this.type,
    Key? key,
  }) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: type == '1X3' ? 1 : 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              type == '1X3' ? 1 : 2,
              (index) => const SizedBox(
                width: 30,
                height: 35,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              type == '1X3' ? 3 : 2,
              (index) {
                int pos = type == '1X3' ? 2 : 1;
                return index == pos
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
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
