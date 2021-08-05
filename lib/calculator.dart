import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String output = "0";
  String _result = "0";
  int num1 = 0;
  int num2 = 0;
  String operator = "";

  buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _result = "0";
      num1 = 0;
      num2 = 0;
      operator = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X") {
      num1 = int.parse(output);
      operator = buttonText;
      _result = "0";
    } else if (buttonText == "=") {
      num2 = int.parse(output);

      if (operator == "+") {
        _result = (num1 + num2).toString();
      }
      if (operator == "-") {
        _result = (num1 - num2).toString();
      }
      if (operator == "X") {
        _result = (num1 * num2).toString();
      }
      if (operator == "/") {
        _result = (num1 / num2).toString();
      }
    } else {
      _result = _result + buttonText;
    }
    print(_result);
    setState(() {
      output = int.parse(_result).toString();
    });
  }

  Widget button(String buttonText, Color backgroundColor) {
    return Container(
      width: 80,
      height: 75,
      margin: EdgeInsets.all(5.0),
      child: RaisedButton(
        color: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Column(
              children: [
                Text(
                  output,
                  style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                ),
                Text(_result)
              ],
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(children: [
            Row(children: [
              button("C", Colors.amber),
              button("%", Colors.amber),
              button("DEL", Colors.amber),
              button("/", Colors.pinkAccent),
            ]),
            Row(
              children: [
                button("7", Colors.amber),
                button("8", Colors.amber),
                button("9", Colors.amber),
                button("X", Colors.pinkAccent),
              ],
            ),
            Row(children: [
              button("4", Colors.amber),
              button("5", Colors.amber),
              button("6", Colors.amber),
              button("-", Colors.pinkAccent),
            ]),
            Row(children: [
              button("1", Colors.amber),
              button("2", Colors.amber),
              button("3", Colors.amber),
              button("+", Colors.pinkAccent),
            ]),
            Row(children: [
              button("00", Colors.amber),
              button("0", Colors.amber),
              button(".", Colors.amber),
              button("=", Colors.pinkAccent),
              
            ]),
          ])
        ]),
      ),
    );
  }
}
