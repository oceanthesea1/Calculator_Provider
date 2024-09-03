import 'package:calculator_provider/rectangle_page.dart';
import 'package:calculator_provider/square_page.dart';
import 'package:calculator_provider/triangle_page.dart';
import 'package:calculator_provider/widgets/cal_color.dart';
import 'package:calculator_provider/widgets/cal_list.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator 2D"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,), 
          CalList(
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
          CalList(
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
          CalList(
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
