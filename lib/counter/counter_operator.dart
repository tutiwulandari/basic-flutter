import 'package:flutter/material.dart';
import 'package:projects/counter/button_counter_min.dart';
import 'package:projects/counter/button_counter_plus.dart';

class CounterOperator extends StatelessWidget {
  const CounterOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: 
      [
        ButtonCounterMin(), 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ButtonCounterPlus(),
        )],
    ));
  }
}
