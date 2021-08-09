import 'package:flutter/material.dart';

class ToDoDetailScreen extends StatefulWidget {
 ToDoDetailScreen({Key? key}) : super(key: key);


  @override
   ToDoDetailScreenState createState() =>  ToDoDetailScreenState();
}

class  ToDoDetailScreenState extends State <ToDoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         appBar: AppBar(title: new Text('To Do Detail'),) ,),
    );
  }
}