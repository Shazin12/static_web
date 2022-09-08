import '../../../export.dart';

class SecondPageButtons extends StatelessWidget {
  final String text;
  const SecondPageButtons({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 228, 222, 222)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: MyTheme.myBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
