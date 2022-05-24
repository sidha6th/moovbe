import 'package:moovbe/extra/exports/exports.dart';

extension ExtMediaQuery on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
}
