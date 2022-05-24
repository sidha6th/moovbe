import 'package:moovbe/extra/exports/exports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.title = '',
    this.isDetailedScreen = false,
    Key? key,
  }) : super(key: key);
  final bool isDetailedScreen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: grey,
      ),
      automaticallyImplyLeading: isDetailedScreen,
      titleSpacing: context.getSize().width * 0.28,
      backgroundColor: black,
      centerTitle: true,
      title: isDetailedScreen
          ? CustomTextWidget(
              text: title,
            )
          : const Image(
              fit: BoxFit.contain,
              image: logoAsset,
            ),
    );
  }
}
