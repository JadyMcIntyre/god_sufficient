import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GSColors {
  static const Color primary = Colors.teal;

  static const Color secondary = Color.fromRGBO(255, 99, 51, 1);

  static const Color offWhite = Color.fromRGBO(255, 255, 255, 0.2);
}

class GSText {
  static TextStyle title1 = GoogleFonts.roboto(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20));

  static TextStyle title2 = GoogleFonts.roboto(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18));

  static TextStyle body = GoogleFonts.roboto(textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15));

  static TextStyle bodySubtle =
      GoogleFonts.roboto(textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15, fontStyle: FontStyle.italic));

  static TextStyle button = GoogleFonts.roboto(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16));
}
