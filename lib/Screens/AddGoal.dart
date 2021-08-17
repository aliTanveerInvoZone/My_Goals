import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget textField(String labelText, bool isMultiLine) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10.1))),
    margin: EdgeInsets.only(left: 25, top: 40),
    child: TextField(
      maxLines: isMultiLine ? 10 : null,
      keyboardType: TextInputType.multiline,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.all(10),
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}

Widget button() {
  return Expanded(
    child: Center(
      child: TextButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        child: Text(
          "Add Goal",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

class AddGoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData;
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Goal",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black,
        ),
        body: Container(
            color: Colors.black,
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            child: Column(children: [
              textField("Title", false),
              textField("Description", true),
              button()
            ])));
  }
}
