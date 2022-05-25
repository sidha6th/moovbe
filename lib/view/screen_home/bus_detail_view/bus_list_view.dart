import 'package:moovbe/extra/exports/exports.dart';

class BusListView extends StatelessWidget {
  const BusListView({required this.onPress, Key? key}) : super(key: key);
  final Function onPress;

  @override
  Widget build(BuildContext context) => FutureBuilder<List<BusModel>?>(
      future: BusDetailController.getBusList(),
      builder: (context, AsyncSnapshot<List<BusModel>?> snapShot) {
        if (snapShot.connectionState == ConnectionState.done) {
          return snapShot.data != null
              ? snapShot.data!.isEmpty
                  ? const SizedBox()
                  : ListView.separated(
                      shrinkWrap: true,
                      itemCount: snapShot.data!.length,
                      itemBuilder: (_, index) => ListTile(
                        onTap: () {
                          onPress();
                        },
                        // leading: Image(
                        //   image: AssetImage(
                        //     snapShot.data![index].image ?? '',
                        //   ),
                        //   errorBuilder: (_, obj, stack) => const SizedBox(),
                        // ),
                        title: CustomTextWidget(
                          text: snapShot.data![index].name ?? 'Unknown',
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
                    )
              : const Center(
                  child: CustomTextWidget(text: 'Oops Something wrong !'),
                );
        } else {
          return const CircularProgressIndicator(
            color: red,
          );
        }
      });
}
