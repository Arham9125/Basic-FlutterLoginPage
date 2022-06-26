import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

text(String txt, dynamic clrtxt, double size, dynamic Fontweight) {
  return Text(
    txt,
    style: GoogleFonts.getFont("Roboto Condensed",
        color: clrtxt, fontSize: size, fontWeight: Fontweight),
  );
}
