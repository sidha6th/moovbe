import 'package:moovbe/extra/exports/exports.dart';

class SeatSectionWidget extends StatelessWidget {
  const SeatSectionWidget({
    required this.columnCount,
    required this.rowCount,
    Key? key,
  }) : super(key: key);
  final int rowCount;
  final int columnCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        columnCount,
        (index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            rowCount,
            (index) => const Image(
              image: AssetImage(
                'assets/images/redseat.png',
              ),
              width: 30,
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
