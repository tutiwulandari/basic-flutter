import 'package:flutter/material.dart';
import 'package:projects/counter/counter_view_model.dart';
import 'package:provider/provider.dart';


class ButtonCounterPlus extends StatelessWidget {
  // final Function increment;
  // const ButtonCounterPlus({Key? key, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (FloatingActionButton(
        onPressed: () {
        //  Provider.of<CounterViewModel>(context, listen: false).increment();
        context.read<CounterViewModel>().increment();
        },
        child: Text(
          '+',
          style: TextStyle(fontSize: 30.0),
        ),
      )),
    );
  }
}
