import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GSColors {
  static const Color gsTeal = Colors.teal;
  static const Color gsOrange = Color.fromRGBO(255, 99, 51, 1);
  static const Color gsOffWhite = Color.fromRGBO(255, 255, 255, 0.2);
}

class GSText {
  static TextStyle title = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
  );

  static TextStyle body = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
    ),
  );

  static TextStyle bodySubtle = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      fontStyle: FontStyle.italic,
    ),
  );

  static TextStyle button = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
  );
}
