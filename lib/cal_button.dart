import 'package:flutter/material.dart';


class CalcButton extends StatelessWidget {
  final String textNumber;
  final Function callback;

  const CalcButton({Key? key, required this.textNumber, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => callback,
      height: 75.0,
    );
  }
}