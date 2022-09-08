import '../../../config/ani_sizes.dart';
import '../../../export.dart';
import 'dart:math';

class SecSideAnimation extends StatefulWidget {
  const SecSideAnimation({
    Key? key,
    required this.child,
    required this.scWidth,
    this.op = false,
  }) : super(key: key);
  final Widget child;
  final double scWidth;
  final bool op;

  @override
  State<SecSideAnimation> createState() => _SecSideAnimationState();
}

class _SecSideAnimationState extends State<SecSideAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation tr;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    // print();
    var i = widget.op ? -1 : 1;
    tr = Tween<double>(begin: (widget.scWidth * i) * pi, end: 1)
        .animate(_controller);
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
        var s = widget.scWidth > 600 ? secSideWeb : secSideMob;
        v.pos > s ? _controller.forward() : _controller.reset();
        return AnimatedBuilder(
          animation: tr,
          builder: (_, w) {
            return Transform.translate(
              offset: Offset(tr.value, 0),
              child: widget.child,
            );
          },
        );
      },
    );
  }
}
