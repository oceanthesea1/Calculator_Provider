import 'package:calculator_provider/artimatika/OperationButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CalculatorModel.dart';

class Aritmatika extends StatefulWidget {
  const Aritmatika({super.key});

  @override
  State<Aritmatika> createState() => _AritmatikaState();
}

class _AritmatikaState extends State<Aritmatika> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<CalculatorModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kalkulator Aritmatika',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              onChanged: (value) {
                calculator.setFirstNumber(double.tryParse(value) ?? 0);
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              onChanged: (value) {
                calculator.setSecondNumber(double.tryParse(value) ?? 0);
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperationButton(text: '+', onPressed: calculator.add),
                OperationButton(text: '-', onPressed: calculator.subtract),
                OperationButton(text: 'x', onPressed: calculator.multiply),
                OperationButton(text: '/', onPressed: calculator.divide),
                OperationButton(
                  text: 'C',
                  onPressed: () {
                    _firstNumberController.clear();
                    _secondNumberController.clear();
                    calculator.clear();
                  },
                  isClear: true,
                ),
                // OperationButton(text: '1', onPressed: () {}),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Hasil: ${calculator.result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
