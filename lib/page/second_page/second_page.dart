import '../../export.dart';
import 'widgets/sec_btn_full.dart';
import 'widgets/sec_img_full.dart';
import 'widgets/sec_side_ani.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaW = MediaQuery.of(context).size.width;

    return Consumer<ScrollProvider>(
      builder: (_, v, w) {
        return Column(
          children: [
            SecSideAnimation(
              scWidth: mediaW,
              child: const Text(
                "Our Vehicle Fleet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                ),
              ),
            ),
            sizedBoxH20,
            SecSideAnimation(
              scWidth: mediaW,
              op: true,
              child: const Text(
                "We provide our customers with the most incredible driving emotions.\nThat's why we have only world-class cars in our fleet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            sizedBoxH20,
            const SecBtnFull(),
            sizedBoxH20,
            const SecImgFull(),
            sizedBoxH20,
          ],
        );
      },
    );
  }
}
