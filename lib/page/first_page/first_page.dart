import 'package:premium_animation/page/first_page/widgets/car_ani.dart';
import 'package:premium_animation/page/first_page/widgets/top.dart';
import 'dart:math';
import '../../export.dart';
import 'widgets/top_ani.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (v) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            context.read<ScrollProvider>().changePos(v.metrics.pixels);
          });
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxH20,
              const HomeTop(),
              sizedBoxH20,
              Consumer<ScrollProvider>(
                builder: (_, v, w) {
                  var pos = (v.pos * -1) / pi;
                  return Transform.translate(
                    offset: Offset(0, pos),
                    child: Stack(
                      children: [
                        SizedBox(
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CarAnimation(
                                isOpacity: true,
                                delay: 2,
                                scWidth: MediaQuery.of(context).size.width,
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Image.network(
                                      "https://i.pinimg.com/564x/2e/52/a6/2e52a6ba5717b94e154bc21c0c422e31.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              CarAnimation(
                                delay: 4,
                                scWidth:
                                    MediaQuery.of(context).size.width.abs(),
                                child: Center(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child:
                                        Image.asset(carsImages.first.imgPath),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(pos, pos),
                          child: TopAnimation(
                            delay: 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    "Premium\nCar Retail\nin New York",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 50,
                                      height: 1,
                                    ),
                                  ),
                                  sizedBoxH10,
                                  Text(
                                    "Don't denay yourself the pleasure of\ndriving the best premium cars from\naround the world here and now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        sizedBoxW10,
                      ],
                    ),
                  );
                },
              ),
              const SecondPage(),
              sizedBoxH20,
              const ThirdPage(),
              sizedBoxH20,
              const FourthPage()
            ],
          ),
        ),
      ),
    );
  }
}
