import 'package:moovbe/extra/exports/exports.dart';

class ChoiceSectionWidget extends StatelessWidget {
  const ChoiceSectionWidget({
    required this.cardOneOnTap,
    required this.cardTwoOnTap,
    Key? key,
  }) : super(key: key);
  final Function cardOneOnTap;
  final Function cardTwoOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: context.getSize().width,
          height: 220,
          child: ListView(
            semanticChildCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  cardOneOnTap();
                },
                child: const ChoiceCard(
                  clr: red,
                  img: 'assets/images/bus.png',
                  subtitle: 'Manage your Bus',
                  title: 'Bus',
                ),
              ),
              space10,
              space10,
              GestureDetector(
                onTap: () {
                  cardTwoOnTap();
                },
                child: const ChoiceCard(
                  clr: black,
                  img: 'assets/images/driver.png',
                  subtitle: 'Manage your Driver',
                  title: 'Driver',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
