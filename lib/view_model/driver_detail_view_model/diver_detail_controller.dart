import 'package:moovbe/extra/exports/exports.dart';

class DriverDetailsController extends GetxController {
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

  static Future<bool> deleteDriver(int id) async {
    try {
      final res = await ApiServices.dio.delete(
        '${ApiServices.baseUrl}${ApiServices.driverList}${ApiServices.urlId!}/',
        data: {"driver_id": id},
        options: Options(
          headers: {
            "Authorization": "Bearer ${ApiServices.token}",
          },
        ),
      );
      return res.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      debugPrint('its error response == ${e.response?.statusCode}');
      return false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  static Future<bool> addDriver(DriverAddModel body) async {
    try {
      final res = await ApiServices.dio.post(
        '${ApiServices.baseUrl}${ApiServices.driverList}${ApiServices.urlId!}/',
        data: body.toJson(),
        options: Options(
          headers: {
            "Authorization": "Bearer ${ApiServices.token}",
          },
        ),
      );
      return res.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      debugPrint('its error response == ${e.response}');
      return false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  static Future<bool> editDriver(int? busId, int? driverId) async {
    debugPrint('$busId $driverId');
    try {
      final res = await ApiServices.dio.patch(
        '${ApiServices.baseUrl}${ApiServices.update}${ApiServices.urlId!}/',
        data: {
          "bus_id": '$busId',
          "driver_id": '$driverId',
        },
        options: Options(
          headers: {
            "Authorization": "Bearer ${ApiServices.token}",
          },
        ),
      );
      debugPrint(res.requestOptions.data);
      return res.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      debugPrint(e.response?.data);
      return false;
    } catch (e) {
      debugPrint(
        e.toString(),
      );
      return false;
    }
  }

  deleteFromTheLocalList(int index) {
    DriverDetailsState.driverList.removeAt(index);
    update();
  }

  @override
  void dispose() {
    DriverDetailsState.driverList.clear();
    super.dispose();
  }
}
