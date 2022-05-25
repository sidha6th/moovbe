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
  static const String update='AssignDriverApi/';
  static final Dio dio = Dio();

  static refresh(String token) async {
    try {
      final res = await dio.get(
        '${baseUrl}api/token/refresh/',
      );
    } on DioError catch (e) {
      debugPrint(e.response.toString());
    }
    //await LoginState.storage.erase();
    // LoginController.saveToken(LoginModel.fromJson(res.data));
  }
}
