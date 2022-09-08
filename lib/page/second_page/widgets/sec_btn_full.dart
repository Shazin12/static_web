import '../../../export.dart';
import 'sec_btn.dart';
import 'sec_side_ani.dart';

class SecBtnFull extends StatelessWidget {
  const SecBtnFull({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaW = MediaQuery.of(context).size.width;

    return SecSideAnimation(
      scWidth: mediaW,
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: const [
          SecondPageButtons(text: "Premium"),
          SecondPageButtons(text: "Coupe"),
          SecondPageButtons(text: "Hypercars"),
          SecondPageButtons(text: "Sportcar"),
          SecondPageButtons(text: "Cobriolet"),
          SecondPageButtons(text: "Limousines"),
        ],
      ),
    );
  }
}
