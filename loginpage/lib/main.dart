import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/Loginpage.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/sharedprefer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const Screens());
}

String finalemail = "";

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.blue, primaryColorLight: Colors.white),
      home: Login(),
    );
  }
}
