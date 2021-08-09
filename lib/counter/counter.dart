import 'package:flutter/material.dart';
import 'package:projects/counter/button_counter_min.dart';
import 'package:projects/counter/button_counter_plus.dart';
import 'package:projects/counter/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: ChangeNotifierProvider(
          create: (contex) => CounterViewModel(),
          child: Container(
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonCounterPlus(),
                    Consumer<CounterViewModel>(builder: (contex, value, child) {
                      return Text(
                        '${value.number}',
                        style: TextStyle(fontSize: 40.0),
                      );
                    }),
                    ButtonCounterMin()
                  ]),
            ),
          ),
        ));
  }
}
