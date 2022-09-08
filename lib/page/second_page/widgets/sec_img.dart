import '../../../export.dart';
import 'sec_scale.dart';

class SecondImage extends StatelessWidget {
  const SecondImage({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return SecondScale(
      child: Container(
        height: 150,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(img),
          ),
        ),
      ),
    );
  }
}
