import 'package:flutter/material.dart';
import 'package:thankfuls/home.dart';

void main() => runApp(ThankfulsApp());

class ThankfulsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green.shade700,
      ),
      title: "Thankfuls",
      home: new Home()
    );
  }
}

