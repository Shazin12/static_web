import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color myGrey = Color.fromARGB(255, 234, 234, 236);
  static const Color myBlack = Color(0xff121111);
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: GoogleFonts.kanit().fontFamily,
  );
}
// Color(0xffAFAEC1)