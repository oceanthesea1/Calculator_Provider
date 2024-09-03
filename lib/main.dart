import 'package:calculator_provider/calculator_2d_page.dart';
import 'package:calculator_provider/calculators_2d.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SquareCalculator()),
        ChangeNotifierProvider(create: (_) => TriangleCalculator()),
        ChangeNotifierProvider(create: (_) => RectangleCalculator()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorPage(), 
        theme: ThemeData.light(),
    );
  }
}
