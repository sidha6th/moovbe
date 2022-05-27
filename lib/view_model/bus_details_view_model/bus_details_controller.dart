import 'package:moovbe/extra/exports/exports.dart';

class BusDetailController {
  static Future<List<BusModel>?> getBusList() async {
    print('insde funtion ${ApiServices.urlId}');
    try {
      final res = await ApiServices.dio.get(
        '${ApiServices.baseUrl}${ApiServices.busList}${ApiServices.urlId}',
        options: Options(
          headers: {"Authorization": "Bearer ${ApiServices.token}"},
        ),
      );
      BusDetailsState.busDetails.clear();
      for (Map<String, dynamic> element in res.data['bus_list']) {
        BusDetailsState.busDetails.add(BusModel.fromJson(element));
      }
      return BusDetailsState.busDetails;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        await ApiServices.refresh(ApiServices.refreshId!);
        await getBusList();
      }
      debugPrint(
        e.response.toString(),
      );
      return null;
    } catch (e) {
      return null;
    }
  }
}
