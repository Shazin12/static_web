import '../../../export.dart';

class DownloadBtn extends StatelessWidget {
  const DownloadBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: SizedBox(
        width: 160,
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FlutterRemix.app_store_fill,
              // size: 20,

              color: MyTheme.myBlack,
            ),
            sizedBoxW5,
            Container(
              width: 2,
              height: 20,
              color: MyTheme.myBlack,
            ),
            sizedBoxW5,
            const Icon(
              FlutterRemix.google_play_fill,
              color: MyTheme.myBlack,
            ),
            sizedBoxW5,
            const Text(
              "Download App",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 14,
                color: MyTheme.myBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
