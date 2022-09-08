import '../../../export.dart';

class SecondScale extends StatefulWidget {
  const SecondScale({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<SecondScale> createState() => _SecondScaleState();
}

class _SecondScaleState extends State<SecondScale>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation tr;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    // print();
    tr = Tween<double>(begin: 0.5, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ScrollProvider>(
      builder: (_, v, w) {
        v.pos > 400
            ? _controller.forward()
            : v.pos < 300
                ? _controller.reverse()
                : null;
        return AnimatedBuilder(
          animation: tr,
          builder: (_, w) {
            return Transform.scale(
              scale: tr.value,
              child: widget.child,
            );
          },
        );
      },
    );
  }
}
