import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/screens/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(primaryColor: primaryColor),
      home: WelcomePage(),
    );
  }
}
