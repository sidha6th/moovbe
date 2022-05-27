import 'package:moovbe/extra/exports/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
  await GetStorage.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
}
