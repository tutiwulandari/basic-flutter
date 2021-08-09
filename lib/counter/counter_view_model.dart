import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int _number = 0;
  int get number => _number;

  increment() {
    _number++;
    notifyListeners();
  }

  decrement() {
    if (_number != 0) {
      _number--;
      notifyListeners();
    }
  }
}
