import 'package:moovbe/extra/exports/exports.dart';

class DriverAddScreen extends StatelessWidget {
  const DriverAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(
            double.infinity,
            50,
          ),
          child: CustomAppBar(
            title: 'Add Driver',
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
                ontap: () {
                  DriverDetailsState.nameController = TextEditingController();
                },
              ),
              space10,
              CustomTextFieldWidget(
                ontap: () {
                  DriverDetailsState.licenseController =
                      TextEditingController();
                },
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
                DriverDetailsController.addDriver(
                  DriverAddModel(
                    licenseNo: DriverDetailsState.licenseController!.text,
                    name: DriverDetailsState.nameController!.text,
                  ),
                ).then(
                  (value) => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeLayout(),
                      ),
                      (route) => false),
                );
              },
              btnTextColor: white,
              btnColor: pink,
            ),
          ),
        ),
      );
}
