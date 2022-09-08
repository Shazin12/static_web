import '../../../export.dart';
import 'third_ani.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.delay,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final String text;
  final int delay;

  @override
  Widget build(BuildContext context) {
    return ThirdAni(
      delay: delay,
      scWidth: MediaQuery.of(context).size.width,
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 190, 191, 192),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon),

                // foregroundColor: Colors.green,
              ),
              const Spacer(),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: MyTheme.myBlack,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
