import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:register_login/OperationButton.dart';
import 'CalculatorModel.dart';

class Aritmatikaa extends StatefulWidget {
  const Aritmatikaa({super.key});

  @override
  State<Aritmatikaa> createState() => _AritmatikaaState();
}

class _AritmatikaaState extends State<Aritmatikaa> {
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
            Text(
                "0",
                textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 100,
              color: Colors.black,
            ),),

            // TextField(
            //   controller: _firstNumberController,
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(
            //     labelText: 'Angka Pertama',
            //     border: OutlineInputBorder(),
            //     contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   ),
            //   onChanged: (value) {
            //     calculator.setFirstNumber(double.tryParse(value) ?? 0);
            //   },
            // ),
            // const SizedBox(height: 16.0),
            // TextField(
            //   controller: _secondNumberController,
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(
            //     labelText: 'Angka Kedua',
            //     border: OutlineInputBorder(),
            //     contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   ),
            //   onChanged: (value) {
            //     calculator.setSecondNumber(double.tryParse(value) ?? 0);
            //   },
            // ),
            Expanded(child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OperationButton(text: "AC", onPressed: (){}),
                    OperationButton(text: "+/-", onPressed: (){}),
                    OperationButton(text: "%", onPressed: (){}),
                    OperationButton(text: '/', onPressed: calculator.divide),
                    // OperationButton(text: '1', onPressed: () {}),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OperationButton(text: "7", onPressed: (){}),
                    OperationButton(text: "8", onPressed: (){}),
                    OperationButton(text: "9", onPressed: (){}),
                    OperationButton(text: 'x', onPressed: calculator.multiply),
                    // OperationButton(text: '1', onPressed: () {}),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OperationButton(text: "4", onPressed: (){}),
                    OperationButton(text: "5", onPressed: (){}),
                    OperationButton(text: "6", onPressed: (){}),
                    OperationButton(text: '-', onPressed: calculator.subtract),
                    // OperationButton(text: '1', onPressed: () {}),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OperationButton(text: "1", onPressed: (){}),
                    OperationButton(text: "2", onPressed: (){}),
                    OperationButton(text: "3", onPressed: (){}),
                    OperationButton(text: '+', onPressed: calculator.add),
                    // OperationButton(text: '1', onPressed: () {}),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OperationButton(text: "0", onPressed: (){}),
                    OperationButton(text: ".", onPressed: (){}),
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
              ],
            )),
          ],
        ),
      ),
    );
  }
}
