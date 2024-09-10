import 'package:flutter/foundation.dart';

class CuboidModel with ChangeNotifier {
  double _length = 0.0;
  double _width = 0.0;
  double _height = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get length => _length;
  double get width => _width;
  double get height => _height;
  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setDimensions(double length, double width, double height) {
    _length = length;
    _width = width;
    _height = height;
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = _length * _width * _height;
  }

  void _calculateSurfaceArea() {
    _surfaceArea = 2 * (_length * _width + _length * _height + _width * _height);
  }

  void calculate() {
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }
}
