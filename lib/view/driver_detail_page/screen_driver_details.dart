import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailPage extends StatelessWidget {
  const DriverDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(
            double.infinity,
            50,
          ),
          child: CustomAppBar(
            title: 'Driver List',
            isDetailedScreen: true,
          ),
        ),
        body: ListView.separated(
          itemCount: 10 + 1,
          itemBuilder: (_, index) => index == 0
              ? const Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                  ),
                  child: CustomTextWidget(
                    text: '10 Driver Found',
                    fontSize: 20,
                  ),
                )
              : ListTile(
                  leading: const Image(
                    image: logoAsset,
                    width: 30,
                    height: 30,
                  ),
                  title: const CustomTextWidget(text: 'Drivername'),
                  subtitle: const CustomTextWidget(text: 'Licn no: 845165454'),
                  trailing: CustomElevatedBtnWidget(
                    btnColor: pink,
                    btnTextColor: white,
                    btnText: ('Delete'),
                    onpressed: () {},
                  ),
                ),
          separatorBuilder: (_, index) => index != 0 ? space10 : emptybx,
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            60,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: CustomElevatedBtnWidget(
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DriverAddScreen(),
                  ),
                );
              },
              btnText: 'Add Driver',
              btnColor: pink,
              btnTextColor: white,
            ),
          ),
        ),
      );
}
