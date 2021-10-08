// This is the start point of your application. Add a main method and create your root app widget here

import 'package:flutter/material.dart';
import 'package:mustang_mini_app/pages/home.dart';

void main() {
  runApp(MiniApp());
}

class MiniApp extends StatelessWidget {
  const MiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.lightGreenAccent, focusColor: Colors.green),
      ),
      home: Home(),
    );
  }
}
