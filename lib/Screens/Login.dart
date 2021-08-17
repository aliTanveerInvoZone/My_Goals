import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
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

Widget button(context) {
  return Container(
    width: 200,
    margin: EdgeInsets.only(top: 50),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white),
    child: TextButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, "HOME", (route) => false);
      },
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
        Navigator.pushNamed(context, 'SIGNUP');
      },
      child: Text(
        "SIGN UP",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class LoginState extends State<Login> {
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
                "Login",
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
                button(context),
                SignUPButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
