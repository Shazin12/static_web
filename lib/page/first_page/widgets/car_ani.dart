import '../../../export.dart';

class CarAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final double scWidth;
  final bool isOpacity;
  const CarAnimation({
    Key? key,
    this.isOpacity = false,
    required this.child,
    required this.delay,
    required this.scWidth,
  }) : super(key: key);

  @override
  State<CarAnimation> createState() => _CarAnimationState();
}

class _CarAnimationState extends State<CarAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation tr;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    // print();
    tr =
        Tween<double>(begin: widget.scWidth * 1, end: 300).animate(_controller);
    delay();
  }

  Future delay() async {
    await Future.delayed(
      Duration(milliseconds: (400 * widget.delay).toInt()),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tr,
      builder: (_, w) => widget.isOpacity
          ? Opacity(
              opacity: _controller.value,
              child: widget.child,
            )
          : Transform.translate(
              offset: Offset(tr.value, 0),
              child: widget.child,
            ),
    );
  }
}
