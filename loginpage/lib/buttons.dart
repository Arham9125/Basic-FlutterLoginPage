import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/sizebox.dart';

class Buttons extends StatefulWidget {
  final clr;
  final width;
  final borderclr;
  final clrtxt;

  Buttons({this.clr, this.width, this.borderclr, this.clrtxt});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(width: 4, color: widget.borderclr),
            primary: widget.clr,
            minimumSize: Size(300, 50)),
        onPressed: () {},
        child: Text(
          "",
          style: GoogleFonts.getFont("Roboto Condensed",
              color: widget.clrtxt, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }
}
