import 'package:calculator_provider/artimatika/artimatika.dart';
import 'package:calculator_provider/bmi_calculator/bmi_calculator.dart';
import 'package:calculator_provider/menu_card.dart';
import 'package:flutter/material.dart';
import 'bangun_datar/calculator_bangun_datar_page.dart';
import 'bangun_ruang/menu_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Kalkulator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            buildMenuCard(
              context,
              'Kalkulator Aritmatika',
              'https://cdn.icon-icons.com/icons2/2596/PNG/512/arithmetic_icon_155804.png',
              const Aritmatika(),
            ),
            buildMenuCard(
              context,
              'Kalkulator Bangun Ruang',
              'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/02/05/bangun-ruang-dan-sifat-sifatnya-20210205100742.jpg',
              MenuScreen(),
            ),
            buildMenuCard(
              context,
              'Kalkulator Bangun Datar',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXDX-uCenuuwNGV2AEdrJZ7nOE4jANSTpuDRX6R4TzD2f4XkZkJYE2ZltYznMxGCR6aQ8&usqp=CAU',
              const CalculatorBDPage(),
            ),
            buildMenuCard(
              context,
              'Kalkulator BMI',
              'https://img.freepik.com/premium-vector/indikator-bmi-white-background-chart-concept-vector-icon_100456-6266.jpg',
              const BmiCalculator(),
            ),
          ],
        ),
      ),
    );
  }
}
