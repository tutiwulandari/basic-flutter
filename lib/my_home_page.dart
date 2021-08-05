import 'package:flutter/material.dart';
import 'button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  String stateWord = "state";
  String number1 = "";
  String number2 = "";
  int result = 0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget _showColumn(String hello) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text("Hello World", style: TextStyle(color: Colors.blue)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(hello),
          ),
        ),
      ],
    );
  }
  
 changeNumber(String number) {
    setState(() {
      if (widget.number1 == '') {
        widget.number1 = number;
      } else {
        widget.number2 = number;
      }
    });
  }


    _resullt() {
    setState(() {
      int num1 = int.parse(widget.number1);
      int num2 = int.parse(widget.number2);

      widget.result = num1 + num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    // _showColumn("hello wulan"),
                    // _showColumn("hello wulan2"),
                    Text(widget.result.toString()),
                    Text(widget.number1),
                    Text(widget.number2),
                  ],
                ),
                ButtonNumber(
                    textNumber: '1', callback: () => changeNumber('1')),
                ButtonNumber(
                    textNumber: '2', callback: () => changeNumber('2')),
                TextButton(
                    onPressed: () {
                      _resullt();
                    },
                    child: Text('result')),
              ],
            ),
          ],
        ));
  }
}

