import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  double _result = 0;
  double _firstNumber = 0;
  double _secondNumber = 0;

  double get result => _result;

  void setFirstNumber(double value) {
    _firstNumber = value;
    notifyListeners();
  }

  void setSecondNumber(double value) {
    _secondNumber = value;
    notifyListeners();
  }

  void add() {
    _result = _firstNumber + _secondNumber;
    notifyListeners();
  }

  void subtract() {
    _result = _firstNumber - _secondNumber;
    notifyListeners();
  }

  void multiply() {
    _result = _firstNumber * _secondNumber;
    notifyListeners();
  }

  void divide() {
    if (_secondNumber != 0) {
      _result = _firstNumber / _secondNumber;
    } else {
      _result = double.nan; // Avoid division by zero
    }
    notifyListeners();
  }

  void clear() {
    _firstNumber = 0;
    _secondNumber = 0;
    _result = 0;
    notifyListeners();
  }
}
