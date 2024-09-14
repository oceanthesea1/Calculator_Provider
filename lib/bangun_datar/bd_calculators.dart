import 'package:flutter/material.dart';

class SquareCalculator with ChangeNotifier {
  double sideSet = 0;
  double areaSet = 0;

  double get area => areaSet;

  void setSide(double side) {
    sideSet = side;
    calculateArea();
  }

  void calculateArea() {
    areaSet = sideSet * sideSet;
    notifyListeners();
  }
}

class TriangleCalculator with ChangeNotifier {
  double baseSet = 0;
  double heightSet = 0;
  double areaSet = 0;

  double get area => areaSet;

  void setBase(double base) {
    baseSet = base;
    calculateArea();
  }

  void setHeight(double height) {
    heightSet = height;
    calculateArea();
  }

  void calculateArea() {
    areaSet = 0.5 * baseSet * heightSet;
    notifyListeners();
  }
}

class RectangleCalculator with ChangeNotifier {
  double lengthSet = 0;
  double widthSet = 0;
  double areaSet = 0;

  double get area => areaSet;

  void setLength(double length) {
    lengthSet = length;
    calculateArea();
  }

  void setWidth(double width) {
    widthSet = width;
    calculateArea();
  }

  void calculateArea() {
    areaSet = lengthSet * widthSet;
    notifyListeners();
  }
}
