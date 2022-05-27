import 'package:moovbe/extra/exports/exports.dart';

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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => const BusDetailedScreen(driverName: ),
              //   ),
              // );
            },
            cardTwoOnTap: () {
              Get.to(
                const DriverDetailPage(),
              );
            },
          ),
          const Flexible(
            child: BusListView(),
          ),
        ],
      ),
    );
  }
}
