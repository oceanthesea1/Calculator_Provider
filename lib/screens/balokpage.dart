import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/models/balok.dart';

class BalokPage extends StatelessWidget {
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balok Bangun Ruang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balok',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: lengthController,
              decoration: InputDecoration(
                labelText: 'Length',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: widthController,
              decoration: InputDecoration(
                labelText: 'Width',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                labelText: 'Height',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final model = Provider.of<CuboidModel>(context, listen: false);
                model.setDimensions(
                  double.parse(lengthController.text),
                  double.parse(widthController.text),
                  double.parse(heightController.text),
                );
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Consumer<CuboidModel>(
              builder: (context, model, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Volume: ${model.volume}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Surface Area: ${model.surfaceArea}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
