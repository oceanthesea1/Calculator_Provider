import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bmi_model.dart';
import 'bmi_calculator.dart';

void main() {
  runApp(
    //router
    ChangeNotifierProvider(
      create: (context) => BmiModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: BmiCalculator(),
    );
  }
}
