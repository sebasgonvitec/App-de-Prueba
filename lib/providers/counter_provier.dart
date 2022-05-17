import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  bool _textBold = false;

  int get count => _count;
  bool get textBold => _textBold;

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void textBoldness(value) {
    _textBold = value;
    notifyListeners();
  }
}
