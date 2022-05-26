import 'package:moovbe/extra/exports/exports.dart';

class ApiServices {
  static String? token;
  static String? urlId;
  static String? refreshId;
  static const String baseUrl = 'http://flutter.noviindus.co.in/api/';
  static const String login = 'LoginApi';
  static const String busList = 'BusListApi/';
  static const String driverList = 'DriverApi/';
  static const String driverManagement = 'DriverApi/';
  static const String update = 'AssignDriverApi/';
  static const String refreshApi = 'api/token/refresh/';
  static final Dio dio = Dio();

  static refresh(String token) async {
    try {
      final res = await dio.post(
        '$baseUrl$refreshApi',
        data: {"refresh": refreshId},
        options: Options(
          headers: {"Authorization": "Bearer$token"},
        ),
      );
      final data = RefreshModel.fromJson(res.data);
      await clearAndSaveNewToken(data);
    } on DioError catch (e) {
      debugPrint(e.response.toString());
    }
  }

  static clearAndSaveNewToken(RefreshModel data) async {
    await LoginController.saveToken(refData: data, isLog: false);
  }
}
