import 'package:flutter/material.dart';
import 'package:goals_app/Screens/AddGoal.dart';
import 'package:goals_app/Screens/SignUp.dart';
import 'package:goals_app/Screens/Splash.dart';
import 'Screens/Login.dart';
import 'Screens/HomePage.dart';
import 'Screens/Details.dart';

class NavigationStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goals',
      initialRoute: 'SPLASH',
      debugShowCheckedModeBanner: false,
      routes: {
        'SPLASH': (context) => Splash(),
        'LOGIN': (context) => Login(),
        'SIGNUP': (context) => SignUp(),
        'HOME': (context) => HomePage(),
        'DETAILS': (context) => Details(),
        'ADDGOAL': (context) => AddGoal(),
      },
    );
  }
}
