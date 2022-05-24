import 'package:moovbe/extra/exports/exports.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({
    required this.clr,
    required this.img,
    required this.subtitle,
    required this.title,
    Key? key,
  }) : super(key: key);
  final Color clr;
  final String title;
  final String subtitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: context.getSize().width / 2 - 20,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: clr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FittedBox(
                    child: CustomTextWidget(
                      text: title,
                      color: white,
                      weight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  CustomTextWidget(
                    text: subtitle,
                    color: white,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image(
                image: AssetImage(img),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
