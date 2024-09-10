import 'package:flutter/foundation.dart';

class SphereModel with ChangeNotifier {
  double _radius = 0.0;
  double _volume = 0.0;
  double _surfaceArea = 0.0;

  double get radius => _radius;
  double get volume => _volume;
  double get surfaceArea => _surfaceArea;

  void setRadius(double radius) {
    _radius = radius;
    _calculateVolume();
    _calculateSurfaceArea();
    notifyListeners();
  }

  void _calculateVolume() {
    _volume = (4/3) * 3.14159265359 * _radius * _radius * _radius;
  }

  void _calculateSurfaceArea() {
    _surfaceArea = 4 * 3.14159265359 * _radius * _radius;
  }
}
