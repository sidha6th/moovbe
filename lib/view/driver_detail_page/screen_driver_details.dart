import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailPage extends StatelessWidget {
  const DriverDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DriverDetailsController());
    return Scaffold(
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
      body: FutureBuilder<List<DriverDetailModel>?>(
        future: DriverDetailsController.getDriverList(),
        builder: (_, AsyncSnapshot<List<DriverDetailModel>?> snapshot) {
          return snapshot.connectionState == ConnectionState.done
              ? snapshot.data == null
                  ? const Center(
                      child: CustomTextWidget(
                        text: 'No driver Found',
                      ),
                    )
                  : GetBuilder<DriverDetailsController>(builder: (controller) {
                      return ListView.separated(
                        itemCount: snapshot.data!.length + 1,
                        itemBuilder: (_, index) => index == 0
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                  left: 10.0,
                                ),
                                child: CustomTextWidget(
                                  text: '${snapshot.data!.length} Driver Found',
                                  fontSize: 20,
                                ),
                              )
                            : ListTile(
                                leading: const Image(
                                  image: driverDefaulimg,
                                ),
                                title: CustomTextWidget(
                                  text: snapshot.data![index - 1].name!,
                                  fontSize: 20,
                                ),
                                subtitle: CustomTextWidget(
                                  text: snapshot.data![index - 1].licenseNo!,
                                ),
                                trailing: CustomElevatedBtnWidget(
                                  btnColor: pink,
                                  btnTextColor: white,
                                  btnText: ('Delete'),
                                  onpressed: () async {
                                    bool status = await DriverDetailsController
                                        .deleteDriver(
                                      snapshot.data![index - 1].id!,
                                    );
                                    status == true
                                        ? controller
                                            .deleteFromTheLocalList(index - 1)
                                        : false;
                                  },
                                ),
                              ),
                        separatorBuilder: (_, index) =>
                            index != 0 ? space10 : emptybx,
                      );
                    })
              : const Center(
                  child: CircularProgressIndicator(
                    color: red,
                  ),
                );
        },
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
              Get.to(
                const DriverAddScreen(),
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
}
