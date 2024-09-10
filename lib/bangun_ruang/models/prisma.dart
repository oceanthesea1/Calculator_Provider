import 'package:flutter/foundation.dart';

class PrismModel with ChangeNotifier {
  double _baseArea = 0.0;
  double _height = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get baseArea => _baseArea;
  double get height => _height;
  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setDimensions(double baseArea, double height, double basePerimeter) {
    _baseArea = baseArea;
    _height = height;
    _calculateVolume();
    _calculateSurfaceArea(basePerimeter);
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = _baseArea * _height;
  }

  void _calculateSurfaceArea(double basePerimeter) {
    // Surface area of a prism = 2 * base area + perimeter of base * height
    _surfaceArea = 2 * _baseArea + basePerimeter * _height;
  }
}
