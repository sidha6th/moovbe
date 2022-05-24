import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailCardWidget extends StatelessWidget {
  const DriverDetailCardWidget({
    Key? key,
  }) : super(key: key);

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
                  children: const <Widget>[
                    FittedBox(
                      child: CustomTextWidget(
                        text: 'Driver name',
                        weight: FontWeight.bold,
                      ),
                    ),
                    CustomTextWidget(
                      text: 'Licence number',
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
