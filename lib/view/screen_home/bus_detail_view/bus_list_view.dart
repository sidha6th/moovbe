import 'package:moovbe/extra/exports/exports.dart';

class BusListView extends StatelessWidget {
  const BusListView({required this.onPress, Key? key}) : super(key: key);
  final Function onPress;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          FutureBuilder(builder: (context, snapShot) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: 29,
              itemBuilder: (_, index) => ListTile(
                onTap: () {
                  onPress();
                },
                leading: const Image(
                  width: 30,
                  height: 30,
                  image: logoAsset,
                ),
                title: const CustomTextWidget(
                  text: 'text',
                ),
                trailing: CustomElevatedBtnWidget(
                  btnColor: red,
                  btnTextColor: white,
                  btnText: 'manage',
                  onpressed: () {
                    onPress();
                  },
                ),
              ),
              separatorBuilder: (_, index) => space10,
            );
          }),
        ],
      );
}
