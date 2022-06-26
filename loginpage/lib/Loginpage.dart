import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/backgroundclr.dart';
import 'package:loginpage/homepage.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/sharedprefer.dart';
import 'package:loginpage/sizebox.dart';
import 'package:loginpage/textfield.dart';
import 'package:loginpage/textwidget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

var finalemail = "";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void initState() {
    readText().whenComplete(() async {
      Timer(
          Duration(seconds: 2),
          () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      emailcontrol.text != null ? MyWidget() : LoginPage())));
    });
    super.initState();
  }

  String name = "arham";

  int password = 123;

  TextEditingController emailcontrol = new TextEditingController();

  TextEditingController passwordcontroll = new TextEditingController();

  void saveText() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("Email", emailcontrol.text);
  }

  Future readText() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? savedvalue = pref.getString("Email");

    if (savedvalue != null) {
      setState(() {
        emailcontrol.text = savedvalue;
      });
    }
    print(emailcontrol.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      body: Column(
        children: [
          Box(100),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: Container(
                alignment: Alignment.topLeft,
                child: text("Welcome back! Glad \n to see you, Again!",
                    Colors.black, 35, FontWeight.w600)),
          ),
          Box(30),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: emailcontrol,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: clr,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter your email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: passwordcontroll,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: clr,
                      suffixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                    ),
                  ),
                )
              ],
            ),
          ),
          Box(50),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 4, color: Colors.black),
                  primary: Colors.black,
                  minimumSize: Size(300, 50)),
              onPressed: () {
                // onchange();
                saveText();
                readText();
                Get.to(MyWidget());
              },
              child: Text(
                "Login",
                style: GoogleFonts.getFont("Roboto Condensed",
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }

  void onchange() async {
    if (emailcontrol.text.isEmail && passwordcontroll.text.isNumericOnly) {
      var response = await Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyWidget()));
    } else {
      print("Enter correct");
    }
  }
}
