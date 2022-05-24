import 'package:moovbe/extra/exports/exports.dart';
import 'package:moovbe/view/driver_detail_page/screen_driver_details.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          50,
        ),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          ChoiceSectionWidget(
            cardOneOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BusDetailedScreen(),
                ),
              );
            },
            cardTwoOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DriverDetailPage(),
                ),
              );
            },
          ),
          Flexible(
            child: BusListView(
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
