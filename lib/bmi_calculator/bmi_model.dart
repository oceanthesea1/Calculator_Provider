import 'package:flutter/material.dart';

class BmiModel extends ChangeNotifier {
  double? _bmi;
  String _category = '';  
  double _height = 0.0;
  double _weight = 0.0;

  double? get bmi => _bmi;
  String get category => _category;

  bool get isInputValid => _height > 0 && _weight > 0;

  void setHeight(double height) {
    _height = height;
    notifyListeners();
  }

  void setWeight(double weight) {
    _weight = weight;
    notifyListeners();
  }

  void calculateBmi() {
    double heightM = _height / 100;
    _bmi = _weight / (heightM * heightM);
    _category = getBmiCategory(_bmi!);
    notifyListeners();
  }

  String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Kurus';
    } else if (bmi < 25.0) {
      return 'Normal';
    } else if (bmi < 30.0) {
      return 'Gemuk';
    } else {
      return 'Obesitas';
    }
  }
}
