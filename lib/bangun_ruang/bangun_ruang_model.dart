import 'package:flutter/material.dart';
import 'package:calculator_provider/bangun_ruang/bangun_ruang_model.dart';

class BangunRuangModel extends ChangeNotifier {
  double _result = 0;

  double get result => _result;

  // Menghitung volume Kubus
  void hitungVolumeKubus(double sisi) {
    _result = sisi * sisi * sisi;
    notifyListeners();
  }

  // Menghitung volume Balok
  void hitungVolumeBalok(double panjang, double lebar, double tinggi) {
    _result = panjang * lebar * tinggi;
    notifyListeners();
  }

  // Menghitung volume Bola
  void hitungVolumeBola(double jariJari) {
    _result = (4 / 3) * 3.14159 * jariJari * jariJari * jariJari;
    notifyListeners();
  }

  // Reset hasil
  void clear() {
    _result = 0;
    notifyListeners();
    }
}