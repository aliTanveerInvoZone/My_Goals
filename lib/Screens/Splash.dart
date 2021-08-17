import 'dart:ui';

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'LOGIN');
    });
    return Container(
      width: 100,
      height: 100,
      color: Colors.black,
      child: Center(
        child: Text(
          "GOALS",
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 50.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
