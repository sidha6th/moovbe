import 'package:moovbe/extra/exports/exports.dart';

const name = 'admin_user';
const pass = '123admin789';

class LoginController {
  static final Dio dio = Dio();
  static Future<LoginModel?> login(String username, String password) async {
    try {
      Response res = await dio.post(
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
      debugPrint(e.toString());
      return null;
    }
  }

  static saveToken(String token) async {
    final GetStorage storage = GetStorage();
    await storage.write('Token', token);
  }
}
