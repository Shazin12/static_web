import '../../export.dart';
import 'widgets/download_btn.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: MyTheme.myBlack,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Column(
              children: const [
                sizedBoxH20,
                Text(
                  "Drive with Unique Today",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                sizedBoxH20,
                Text(
                  "Get the app to explore the world of premium\ncars - that's exciting",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                sizedBoxH20,
                DownloadBtn(),
              ],
            ),
          ),
          sizedBoxH20,
        ],
      ),
    );
  }
}
