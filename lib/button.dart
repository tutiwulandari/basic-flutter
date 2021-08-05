import 'package:flutter/material.dart';

class ButtonNumber extends StatelessWidget {
  final String textNumber;
  final Function callback;

  const ButtonNumber({Key? key,  required this.textNumber, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => callback(),
      height: 75.0,
      child: Text(
        textNumber,
        style: TextStyle(fontWeight: FontWeight.bold),),
        textColor: Colors.purpleAccent,
    );
  }
}