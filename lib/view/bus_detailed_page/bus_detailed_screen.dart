import 'package:moovbe/extra/exports/exports.dart';

class BusDetailedScreen extends StatelessWidget {
  const BusDetailedScreen({
    required this.driverName,
    this.licenseNo,
    required this.type,
    Key? key,
  }) : super(key: key);
  final String? driverName;
  final String? licenseNo;
  final String type;

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
            DriverDetailCardWidget(
              driverName: driverName,
              licenseNo: licenseNo,
            ),
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
                    DriverSeatSectionWidget(type: type),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: type == '1X3' ? 1 : 2,
                          child: SeatSectionWidget(
                            columnCount: 9,
                            rowCount: type == '1X3' ? 1 : 2,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SeatSectionWidget(
                            columnCount: 9,
                            rowCount: type == '1X3' ? 3 : 2,
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
