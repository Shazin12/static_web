import '../../../export.dart';

class TopAnimation extends StatefulWidget {
  final Widget child;
  final double delay;
  const TopAnimation({Key? key, required this.child, required this.delay})
      : super(key: key);

  @override
  State<TopAnimation> createState() => _TopAnimationState();
}

class _TopAnimationState extends State<TopAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation tr;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    tr = Tween<double>(begin: -100.0, end: 1.0).animate(_controller);
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
      builder: (_, w) {
        return Opacity(
          opacity: _controller.value,
          child: Transform.translate(
            offset: Offset(tr.value, tr.value),
            child: widget.child,
          ),
        );
      },
    );
  }
}
