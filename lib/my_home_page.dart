import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center( child: Text('Hello World', style: TextStyle(color: Colors.blue),),),
                Center( child: Text('Hello World', style: TextStyle(color: Colors.blue),),),
                  Center( child: Text('Hello World', style: TextStyle(color: Colors.blue),),),
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center( child: Text('Hello World'),),
                   Center( child: Text('Hello World'),),
                    Center( child: Text('Hello World'),),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
