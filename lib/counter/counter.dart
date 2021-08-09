import 'package:flutter/material.dart';
import 'package:projects/counter/button_counter_min.dart';
import 'package:projects/counter/button_counter_plus.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);


  @override
  _CounterScreenState createState() => _CounterScreenState();

}


  
class _CounterScreenState extends State<CounterScreen> {
  int number = 0;

increment() {
  setState(() {
    number++;
  });
}


decrement() {
  setState(() {
    if(number != 0 ) 
    number--;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Container(
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               ButtonCounterPlus(increment: increment),
                Text(
                  '$number',
                  style: TextStyle(fontSize: 60.0),
                ),
               ButtonCounterMin(decrement: decrement)
              ]),
        ),
      ),
    );
  }
}
