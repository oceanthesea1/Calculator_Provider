import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/models/limas.dart';

class LimasPage extends StatelessWidget {
  final TextEditingController baseController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limas Bangun Ruang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Limas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: baseController,
              decoration: InputDecoration(
                labelText: 'Base Length',
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
                final model = Provider.of<PyramidModel>(context, listen: false);
                model.setDimensions(
                  double.parse(baseController.text),
                  double.parse(heightController.text),
                );
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Consumer<PyramidModel>(
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
