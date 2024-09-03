import 'package:calculator_provider/calculators_2d.dart';
import 'package:calculator_provider/widgets/cal_appbar.dart';
import 'package:calculator_provider/widgets/cal_color.dart';
import 'package:calculator_provider/widgets/cal_text_field.dart';
import 'package:calculator_provider/widgets/cal_value_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SquarePage extends StatefulWidget {
  const SquarePage({super.key});

  @override
  State<SquarePage> createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
  final TextEditingController sideController = TextEditingController();

  @override
  void dispose() {
    sideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final squareCalculator = Provider.of<SquareCalculator>(context);
    return Scaffold(
      appBar: MyCalAppbar(
          backgroundColor: colorTransparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          toolbarHeight: 40),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              Icons.crop_square_outlined, 
              size: 200, 
            ),
            SizedBox(height: 30), 
            CalTextField(
              labelText: 'Side Length',
              isObsecure: false,
              textStyle: TextStyle(color: colorWhite),
              controller: sideController,
              keyboardType: TextInputType.number,
              fillColor: inputFillColor,
              filled: true,
              enabledBorderColor: enabledBorderColor,
              focusedBorderColor: focusedBorderColor,
              borderRadius: 13,
              onChanged: (value) {
                double side = double.tryParse(value) ?? 0;
                squareCalculator.setSide(side);
              },
            ),
            const SizedBox(height: 20),
            CalValueText(
                text: 'Area: ${squareCalculator.area}',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textColor: colorWhite,
                backgroundColor: colorList,
                borderRadius: 10),
          ],
        ),
      ),
    );
  }
}
