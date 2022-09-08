import 'package:premium_animation/page/first_page/widgets/top_ani.dart';

import '../../../export.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
    List<Widget> children = [
      sizedBoxW20,
      sizedBoxW20,
      TopAnimation(
        delay: 1,
        child: Text(
          "Unique",
          style: style.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      const Spacer(),
      Expanded(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            TopAnimation(
              delay: 2,
              child: Text(
                "About Us",
                style: style,
              ),
            ),
            sizedBoxW20,
            TopAnimation(
              delay: 3,
              child: Text(
                "Cars",
                style: style,
              ),
            ),
            sizedBoxW20,
            TopAnimation(
              delay: 4,
              child: Text(
                "Futures",
                style: style,
              ),
            ),
            sizedBoxW20,
            TopAnimation(
              delay: 5,
              child: Text(
                "Help",
                style: style,
              ),
            ),
            sizedBoxW20,
            TopAnimation(
              delay: 6,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.myBlack),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text(
                  "Download App",
                  style: style.copyWith(),
                ),
              ),
            ),
          ],
        ),
      ),
      sizedBoxW20,
    ];

    return SizedBox(
      width: double.infinity,
      child: Row(
        children: children,
      ),
    );
  }
}
