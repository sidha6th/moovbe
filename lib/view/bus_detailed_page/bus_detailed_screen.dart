import 'package:moovbe/extra/exports/exports.dart';

class BusDetailedScreen extends StatelessWidget {
  const BusDetailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(
            double.infinity,
            50,
          ),
          child: CustomAppBar(
            isDetailedScreen: true,
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            const DriverDetailCardWidget(),
            space10,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.getSize().width * 0.1,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    const DriverSeatSectionWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Expanded(
                          child: SeatSectionWidget(
                            columnCount: 9,
                            rowCount: 2,
                          ),
                        ),
                        Expanded(
                          child: SeatSectionWidget(
                            columnCount: 9,
                            rowCount: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
