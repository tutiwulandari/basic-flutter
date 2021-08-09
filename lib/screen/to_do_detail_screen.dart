import 'package:flutter/material.dart';
import 'package:projects/model/to_do.dart';

class ToDoDetailScreen extends StatefulWidget {
 ToDoDetailScreen({Key? key, required this.toDo}) : super(key: key);

  final ToDo toDo;

  @override
   ToDoDetailScreenState createState() =>  ToDoDetailScreenState();
}

class  ToDoDetailScreenState extends State <ToDoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         appBar: AppBar(title: new Text('To Do Detail'),
         ) ,
         body: Padding(padding: const EdgeInsets.all(16.0),
         child: Text('wulan'),),
         ),
    );
  }
}