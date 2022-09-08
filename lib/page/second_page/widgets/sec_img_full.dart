import '../../../export.dart';
import 'sec_img.dart';
import 'sec_side_ani.dart';

class SecImgFull extends StatelessWidget {
  const SecImgFull({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaW = MediaQuery.of(context).size.width;

    return SecSideAnimation(
      scWidth: mediaW,
      op: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Wrap(
          spacing: 15,
          runSpacing: 15,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          children: const [
            SecondImage(
              img:
                  "https://images.pexels.com/photos/909907/pexels-photo-909907.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            SecondImage(
              img:
                  "https://images.pexels.com/photos/119435/pexels-photo-119435.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            SecondImage(
              img:
                  "https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            SecondImage(
              img:
                  "https://images.pexels.com/photos/1335077/pexels-photo-1335077.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            SecondImage(
              img:
                  "https://images.pexels.com/photos/2365572/pexels-photo-2365572.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
          ],
        ),
      ),
    );
  }
}
