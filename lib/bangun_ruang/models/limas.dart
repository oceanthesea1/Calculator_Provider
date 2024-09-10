import 'package:flutter/foundation.dart';
import 'dart:math';

class PyramidModel extends ChangeNotifier {
  double _baseLength = 0.0;
  double _height = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setDimensions(double baseLength, double height) {
    _baseLength = baseLength;
    _height = height;
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = (1 / 3) * (_baseLength * _baseLength) * _height;
  }

  void _calculateSurfaceArea() {
    double slantHeight = sqrt(_height * _height + (_baseLength / 2) * (_baseLength / 2));
    _surfaceArea = _baseLength * _baseLength + 2 * _baseLength * slantHeight;
  }
}
