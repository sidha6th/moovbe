import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailCardWidget extends StatelessWidget {
  const DriverDetailCardWidget({
    required this.driverName,
    this.licenseNo,
    Key? key,
  }) : super(key: key);
  final String? driverName;
  final String? licenseNo;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: const Color.fromARGB(230, 0, 0, 0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FittedBox(
                      child: CustomTextWidget(
                        text: driverName ?? 'Unknown',
                        weight: FontWeight.bold,
                      ),
                    ),
                    CustomTextWidget(
                      text: licenseNo ?? 'X' * 10,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const Image(
                image: AssetImage(
                  'assets/images/driver.png',
                ),
              ),
            ],
          ),
        ),
      );
}
