import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _CalculatorAppState createState() =>  _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String output = "0";

  Widget buildButton(String buttonText) {
    return  Container(
      width: 100,
      height:75,
      margin: EdgeInsets.all(6.0),
      child:  TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffF18265),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding:  EdgeInsets.all(26.0),
        ),
        onPressed: () {},
        child:  Text(
          buttonText,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title: Text(widget.title)),
      body:  Container(
        child:  Column(children: <Widget>[
           Container(
            alignment: Alignment.centerRight,
            padding:  EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child:  Text(
              output,
              style:  TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          //  Expanded(
          //   child:  Divider(),
          // ),
           Column(children: [

             Row(children: [
              buildButton("7"),
              buildButton("8"),
              buildButton("9"),
            ]),
             Row(children: [
              buildButton("4"),
              buildButton("5"),
              buildButton("6"),
            ]),
             Row(children: [
              buildButton("1"),
              buildButton("2"),
              buildButton("3"),
            ]),
             Row(children: [
              buildButton("0"),
              buildButton("X"),
              buildButton("/"),
            ]),
             Row(children: [
              buildButton("+"),
              buildButton("-"),
              buildButton("C"),
            ]),
             Row(
              children: [
              
                buildButton("="),
              ],
            )
          ])
        ]),
      ),
    );
  }
}
