import 'package:moovbe/extra/exports/exports.dart';

class DriverListView extends StatelessWidget {
  const DriverListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FutureBuilder(
    future: DriverDetailsController.getDriverList(),
    builder: (context, snapshot) {
      return ListView.separated(
            shrinkWrap: true,
            itemCount: 29,
            itemBuilder: (_, index) => ListTile(
              leading: const Image(
                image: logoAsset,
              ),
              title: const CustomTextWidget(
                text: 'text',
              ),
              trailing: CustomElevatedBtnWidget(
                btnColor: red,
                btnTextColor: white,
                btnText: 'manage',
                onpressed: () {},
              ),
            ),
            separatorBuilder: (_, index) => space10,
          );
    }
  );
}
