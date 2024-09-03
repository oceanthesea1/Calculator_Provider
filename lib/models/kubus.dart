import 'package:flutter/foundation.dart';

class CubeModel with ChangeNotifier {
  double _sideLength = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get sideLength => _sideLength;
  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setSideLength(double side) {
    _sideLength = side;
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = _sideLength * _sideLength * _sideLength;
  }

  void _calculateSurfaceArea() {
    _surfaceArea = 6 * (_sideLength * _sideLength);
  }
}
