import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        textDirection: TextDirection.ltr,
        children: [
          Container(
              width: 350,
              margin: EdgeInsets.only(top: 150, left: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: Column(
              children: [
                textInput("Email"),
                textInput("Password"),
                textInput("Confirm Password"),
                button(),
                SignUPButton(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget textInput(
  String labelText,
) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10.1))),
    margin: EdgeInsets.only(left: 25, top: 40),
    child: TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.all(10),
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}

Widget button() {
  return Container(
    width: 200,
    margin: EdgeInsets.only(top: 50),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white),
    child: TextButton(
      onPressed: () {},
      child: Text(
        "SUBMIT",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget SignUPButton(context) {
  return Container(
    margin: EdgeInsets.only(top: 50),
    child: TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        "GO BACK",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
