import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void resetCount() {
    count = 0;
    notifyListeners();
  }
}

class ColorProvider extends ChangeNotifier {
  Color color = Colors.white;

  void changeToDark() {
    color = Colors.black;
    notifyListeners();
  }

  void changeToWhite() {
    color = Colors.white;
    notifyListeners();
  }
}