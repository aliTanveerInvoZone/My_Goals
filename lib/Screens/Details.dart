import 'dart:ui';

import 'package:flutter/material.dart';

Widget titleContainer(mediaQueryData) {
  return Container(
      width: mediaQueryData.size.width * 0.75,
      height: mediaQueryData.size.height * 0.05,
      child: Text.rich(TextSpan(
          text: "Title: ",
          children: [
            TextSpan(
                text: "Goal Title",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22))
          ],
          style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold))));
}

Widget detailsContainer(mediaQueryData) {
  return Container(
      width: mediaQueryData.size.width * 0.75,
      height: mediaQueryData.size.height * 0.65,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: [
          Text(
            "Details: ",
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Text(
            "Goal Details",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ));
}

Widget bottomButton(mediaQueryData) {
  return Container(
    width: mediaQueryData.size.width,
    height: mediaQueryData.size.height * 0.15,
    child: Center(
        child: TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
      child: Text(
        "Mark as Completed",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    )),
  );
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData;
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Details",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        child: Column(children: [
          titleContainer(mediaQueryData),
          detailsContainer(mediaQueryData),
          bottomButton(mediaQueryData)
        ]),
      ),
    );
  }
}
