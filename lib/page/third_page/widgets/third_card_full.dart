import '../../../export.dart';
import 'third_card.dart';

class ThirdCardFull extends StatelessWidget {
  const ThirdCardFull({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        spacing: 15,
        runSpacing: 15,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          ThirdCard(
            delay: 1,
            icon: FlutterRemix.twenty_four_hours_line,
            text: "24-Hour car delivery",
            color: Colors.green.shade100,
          ),
          ThirdCard(
            delay: 2,
            icon: FlutterRemix.message_3_line,
            text: "24/7 technical support",
            color: Colors.purple.shade100,
          ),
          ThirdCard(
            delay: 3,
            icon: FlutterRemix.flashlight_line,
            text: "All models have a premium package",
            color: Colors.pink.shade100,
          ),
          ThirdCard(
            delay: 4,
            icon: FlutterRemix.shield_check_line,
            text: "Absolute confidentiality",
            color: Colors.yellow.shade100,
          ),
        ],
      ),
    );
  }
}
