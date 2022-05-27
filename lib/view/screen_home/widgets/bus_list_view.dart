import 'package:moovbe/extra/exports/exports.dart';

class BusListView extends StatelessWidget {
  const BusListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FutureBuilder<List<BusModel>?>(
        future: BusDetailController.getBusList(),
        builder: (context, AsyncSnapshot<List<BusModel>?> snapShot) {
          if (snapShot.connectionState == ConnectionState.done) {
            return snapShot.data != null
                ? snapShot.data!.isEmpty
                    ? const Center(
                        child: CustomTextWidget(
                          text: 'No Bus Found',
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        itemCount: snapShot.data!.length,
                        itemBuilder: (_, index) => ListTile(
                          onTap: () {},
                          leading: Image(
                            image: NetworkImage(
                              snapShot.data![index].image ?? '',
                            ),
                            errorBuilder: (_, obj, stack) => const Image(
                              image: busDefaultimg,
                              width: 30,
                              height: 30,
                            ),
                          ),
                          title: CustomTextWidget(
                            text: snapShot.data![index].name ?? 'Unknown',
                          ),
                          trailing: CustomElevatedBtnWidget(
                            btnColor: red,
                            btnTextColor: white,
                            btnText: 'manage',
                            onpressed: () {
                              Get.to(
                                BusDetailedScreen(
                                  busId: snapShot.data![index].id,
                                  driverName: snapShot.data![index].driver,
                                  type: snapShot.data![index].type!,
                                ),
                              );
                            },
                          ),
                        ),
                        separatorBuilder: (_, index) => space10,
                      )
                : const Center(
                    child: CustomTextWidget(
                      text: 'Oops Something wrong !',
                    ),
                  );
          } else {
            return const CircularProgressIndicator(
              color: red,
            );
          }
        },
      );
}
