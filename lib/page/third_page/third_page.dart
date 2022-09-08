import '../../export.dart';
import 'widgets/third_card_full.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Key Features",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                  color: MyTheme.myBlack),
            ),
            Text(
              "We are all about our client's confort and safety. That's\n why we provide the best service you can imagine.",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: MyTheme.myBlack,
              ),
            ),
            SizedBox(height: 30),
            ThirdCardFull(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
