import 'package:moovbe/extra/exports/exports.dart';

class DriverAddScreen extends StatelessWidget {
  const DriverAddScreen({
    this.licenseNo,
    this.busId,
    this.name,
    this.title = 'Add Driver',
    this.forAdd = true,
    this.driverId,
    Key? key,
  }) : super(key: key);
  final String? name;
  final String? licenseNo;
  final String title;
  final bool forAdd;
  final int? busId;
  final int? driverId;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            50,
          ),
          child: CustomAppBar(
            title: title,
            isDetailedScreen: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              CustomTextFieldWidget(
                controller: DriverDetailsState.nameController,
                hintText: 'Enter Name',
              ),
              space10,
              CustomTextFieldWidget(
                controller: DriverDetailsState.licenseController,
                hintText: 'Enter License Number',
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: CustomElevatedBtnWidget(
              btnText: 'Save',
              onpressed: () {
                forAdd
                    ? DriverDetailsController.addDriver(
                        DriverAddModel(
                          licenseNo: DriverDetailsState.licenseController.text,
                          name: DriverDetailsState.nameController.text,
                        ),
                      ).then(
                        (bool status) => status
                            ? Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const HomeLayout(),
                                ),
                                (route) => false,
                              )
                            : false,
                      )
                    : DriverDetailsController.editDriver(
                        busId,
                        driverId,
                      );
              },
              btnTextColor: white,
              btnColor: pink,
            ),
          ),
        ),
      );
}
