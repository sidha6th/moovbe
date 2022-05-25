import 'package:moovbe/extra/exports/exports.dart';

class SplashController {
  static bool checkUserLoggedInOrNot() {
    ApiServices.token = LoginState.storage.read<String>('Token');
    ApiServices.urlId = LoginState.storage.read<String>('urlid');
    ApiServices.refreshId = LoginState.storage.read<String>('refreshId');
    return (ApiServices.token != null &&
            ApiServices.urlId != null &&
            ApiServices.refreshId != null)
        ? true
        : false;
  }
}
