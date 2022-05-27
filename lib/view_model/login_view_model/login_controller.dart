import 'package:moovbe/extra/exports/exports.dart';

class LoginController {
  static Future<LoginModel?> login(String username, String password) async {
    try {
      Response res = await ApiServices.dio.post(
        ApiServices.baseUrl + ApiServices.login,
        data: {
          "username": username,
          "password": password,
        },
      );
      return LoginModel.fromJson(res.data);
    } on DioError catch (e) {
      debugPrint(e.error);
      return null;
    } catch (e) {
      debugPrint(
        e.toString(),
      );
      return null;
    }
  }

  static Future<void> saveToken(
      {LoginModel? logData, RefreshModel? refData, required bool isLog}) async {
    ApiServices.token = isLog == true ? logData?.access : refData?.access;
    ApiServices.refreshId = isLog == true ? logData?.refresh : refData?.refresh;
    ApiServices.urlId = isLog == true ? logData?.urlId : ApiServices.urlId!;
    if (isLog == false) {
      LoginState.storage.erase();
    }
    await LoginState.storage.write(
      'Token',
      isLog == true ? logData?.access : refData?.access,
    );
    await LoginState.storage.write(
      'urlid',
      isLog == true ? logData?.urlId : ApiServices.urlId,
    );
    await LoginState.storage.write(
      'refreshId',
      isLog == true ? logData?.refresh : refData?.refresh,
    );
  }
}
