import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key, required this.title}) : super(key: key);
  final String title;
  String number1 = '';
  String number2 = '';
  String operator = '';
  double result1 = 0.0;

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  changeNumber(String number) {
    setState(() {
      if (widget.number1 == '') {
        widget.number1 = number;
      } else {
        widget.number2 = number;
      }
    });
  }

  changeOperator(String opr) {
    setState(() {
      widget.operator = opr;
    });
  }

  resetCalc(String numb1, String numb2, String op) {
    setState(() {
      widget.number1 = '';
      widget.number2 = '';
      widget.operator = '';
    });
  }

  _result1() {
    setState(() {
      double n1 = double.parse(widget.number1);
      double n2 = double.parse(widget.number2);

      if (widget.operator == "+") {
        widget.result1 = n1 + n2;
      } else if (widget.operator == "-") {
        widget.result1 = n1 - n2;
      } else if (widget.operator == "/") {
        widget.result1 = n1 / n2;
      } else if (widget.operator == "*") {
        widget.result1 = n1 * n2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(widget.number1 , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Text(widget.operator,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Text(widget.number2,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(widget.result1.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () => {},
                    child: Text("C")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                   color: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {}, child: Text("%")),
              ),
                Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                   color: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {}, child: Text("DEL")),
              ),
               Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeOperator('/');
                    },
                    child: Text("/")),
              ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('7');
                    },
                    child: Text("7")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('8');
                    },
                    child: Text("8")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('9');
                    },
                    child: Text("9")),
              ),
                Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeOperator("*");
                    },
                    child: Text("*")),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('4');
                    },
                    child: Text("4")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('5');
                    },
                    child: Text("5")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('6');
                    },
                    child: Text("6")),
              ),
               Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeOperator('-');
                    },
                    child: Text("-")),
              ),
            ],
          ),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('1');
                    },
                    child: Text("1")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('2');
                    },
                    child: Text("2")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('3');
                    },
                    child: Text("3")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeOperator('+');
                    },
                    child: Text("+")),
              ),
            
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('00');
                    },
                    child: Text("0")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('0');
                    },
                    child: Text("00")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      changeNumber('.');
                    },
                    child: Text(".")),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      _result1();
                    },
                    child: Text("=")),
              )
            ],
          ),
        ],
      ),
    );
  }
}
