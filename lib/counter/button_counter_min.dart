import 'package:flutter/material.dart';
import 'package:projects/counter/counter_view_model.dart';
import 'package:provider/provider.dart';



class ButtonCounterMin extends StatelessWidget {
  // final Function decrement;
  // const ButtonCounterMin({Key? key, required this.decrement}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
         FloatingActionButton(
                  onPressed: ()  {
                    Provider.of<CounterViewModel>(context, listen: false).decrement();
                  },
                  child: Text(
                    '-', style: TextStyle(fontSize: 30),
                  )
                )
      ),
    );
  }
}