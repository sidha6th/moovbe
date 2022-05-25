import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailsController {
  static Future<List<DriverDetailModel>?> getDriverList() async {
    try {
      final res = await ApiServices.dio.get(
        ApiServices.baseUrl + ApiServices.driverList + ApiServices.urlId!,
        options: Options(
          headers: {"Authorization": "Bearer ${ApiServices.token}"},
        ),
      );
      DriverDetailsState.driverList.clear();
      for (var element in res.data['driver_list']) {
        DriverDetailsState.driverList.add(
          DriverDetailModel.fromJson(
            element,
          ),
        );
      }
      return DriverDetailsState.driverList;
    } on DioError catch (e) {
      debugPrint(e.response.toString());
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
