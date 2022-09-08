import '../../../export.dart';

class ThirdAni extends StatefulWidget {
  const ThirdAni({
    Key? key,
    required this.child,
    required this.scWidth,
    required this.delay,
  }) : super(key: key);
  final Widget child;
  final double scWidth;
  final int delay;

  @override
  State<ThirdAni> createState() => _ThirdAniState();
}

class _ThirdAniState extends State<ThirdAni>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation tr;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    // print();
    tr = Tween<double>(begin: widget.scWidth, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  delay() async {
    await Future.delayed(Duration(milliseconds: 200 * widget.delay));
    _controller.forward();
  }

  delayBack() async {
    await Future.delayed(Duration(milliseconds: 200 * widget.delay));
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    var mob = 1100;
    var web = 800;
    return Consumer<ScrollProvider>(
      builder: (_, v, w) {
        var i = MediaQuery.of(context).size.width > 700 ? web : mob;
        v.pos > i ? delay() : delayBack();
        return AnimatedBuilder(
          animation: tr,
          builder: (_, w) {
            return Transform.translate(
              offset: Offset(0, tr.value),
              child: widget.child,
            );
          },
        );
      },
    );
  }
}
