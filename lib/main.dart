import 'package:flutter/material.dart';
import 'package:projects/calculator_app.dart';
// import 'package:projects/calculator.dart';
import 'package:projects/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorApp(title: 'Calculator'),
    );
  }
}

