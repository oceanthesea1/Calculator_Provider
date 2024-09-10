import 'package:flutter/foundation.dart';
import 'dart:math';


class ConeModel with ChangeNotifier {
  double _radius = 0.0;
  double _height = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get radius => _radius;
  double get height => _height;
  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setDimensions(double radius, double height) {
    _radius = radius;
    _height = height;
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = (1/3) * 3.14159265359 * _radius * _radius * _height;
  }

  void _calculateSurfaceArea() {
    _surfaceArea = 3.14159265359 * _radius * (_radius + (sqrt((_height * _height) + (_radius * _radius))));
  }
}
