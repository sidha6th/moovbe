import 'package:moovbe/extra/exports/exports.dart';

const name = 'admin_user';
const pass = '123admin789';

class LoginController {
  static Future<LoginModel?> login(String username, String password) async {
    try {
      Response res = await ApiServices.dio.post(
        ApiServices.baseUrl + ApiServices.login,
        data: {
          "username": name,
          "password": pass,
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

  static saveToken(LoginModel data) async {
    await LoginState.storage.write('Token', data.access);
    await LoginState.storage.write('urlid', data.urlId);
    await LoginState.storage.write('refreshId', data.refresh);
  }
}
