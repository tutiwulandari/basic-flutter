import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projects/counter/counter.dart';
import 'package:projects/screen/to_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        '/' : (context) => CounterScreen(),
        // '/detail' : (contex) => ToDoDetailScreen()
      }
      // home: ToDoScreen(),
    );
  }
}

