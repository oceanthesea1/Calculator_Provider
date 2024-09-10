import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bmi_model.dart';
import 'widgets/text_field_provider.dart';
import 'widgets/text_provider.dart';
import 'widgets/button_provider.dart';
import 'widgets/appbar_provider.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final bmiModel = Provider.of<BmiModel>(context);

    return Scaffold(
      appBar: const AppBarProvider(title: 'BMI Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            TextFieldProvider(
              labelText: 'Height (cm)',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                double? height = double.tryParse(value);
                if (height != null) {
                  bmiModel.setHeight(height);
                }
              },
            ),
            TextFieldProvider(
              labelText: 'Weight (kg)',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                double? weight = double.tryParse(value);
                if (weight != null) {
                  bmiModel.setWeight(weight);
                }
              },
            ),
            const SizedBox(height: 20),
            ButtonProvider(
              onPressed: bmiModel.isInputValid
                  ? () {
                      bmiModel.calculateBmi();
                    }
                  : null,
              text: 'Hitung BMI',
            ),
            const SizedBox(height: 20),
            TextProvider(
              text: bmiModel.bmi != null
                  ? 'BMI Anda: ${bmiModel.bmi!.toStringAsFixed(2)} (${bmiModel.category})'
                  : 'Masukkan tinggi dan berat badan',
            ),
          ],
        ),
      ),
    );
  }
}
