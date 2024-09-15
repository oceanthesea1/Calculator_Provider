import 'package:calculator_provider/bangun_datar/rectangle_page.dart';
import 'package:calculator_provider/bangun_datar/square_page.dart';
import 'package:calculator_provider/bangun_datar/triangle_page.dart';
import 'package:calculator_provider/bangun_datar/widgets/bd_color.dart';
import 'package:calculator_provider/bangun_datar/widgets/bd_list.dart';
import 'package:flutter/material.dart';

class CalculatorBDPage extends StatefulWidget {
  const CalculatorBDPage({super.key});

  @override
  State<CalculatorBDPage> createState() => _CalculatorBDPageState();
}

class _CalculatorBDPageState extends State<CalculatorBDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Bangun Datar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,), 
          BDCalList(
            height: 100,
            color: colorList,
            icon: Icons.crop_square_outlined,
            text: 'Square Calculator',
            iconSize: 50,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            borderRadius: 15,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SquarePage()),
              );
            },
          ),
          SizedBox(
            height: 16,
          ),
          BDCalList(
            height: 100,
            color: colorList,
            icon: Icons.change_history_rounded,
            text: 'Triangle Calculator',
            iconSize: 50,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            borderRadius: 15,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TrianglePage()),
              );
            },
          ), 
          SizedBox(
            height: 16,
          ),
          BDCalList(
            height: 100,
            color: colorList,
            icon: Icons.rectangle_outlined,
            text: 'Rectangle Calculator',
            iconSize: 50,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            borderRadius: 15,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RectanglePage()),
              );
            },
          )
        ],
      ),
    );
  }
}
