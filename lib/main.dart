import 'package:calculator_provider/artimatika/calculator_model.dart';
import 'package:calculator_provider/bangun_datar/bd_calculators.dart';
import 'package:calculator_provider/bangun_ruang/bangun_ruang_model.dart';
import 'package:calculator_provider/bmi_calculator/bmi_model.dart';
import 'package:calculator_provider/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculatorModel()),
        ChangeNotifierProvider(create: (context) => BmiModel()),
        ChangeNotifierProvider(create: (context) => BangunRuangModel()),
        ChangeNotifierProvider(create: (context) => SquareCalculator()),
        ChangeNotifierProvider(create: (context) => RectangleCalculator()),
        ChangeNotifierProvider(create: (context) => TriangleCalculator()),

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Dashboard(),
    );
  }
}
