import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang/models/tabung.dart';

class TabungPage extends StatelessWidget {
  final TextEditingController radiusController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cylinder Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cylinder',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: radiusController,
              decoration: InputDecoration(
                labelText: 'Radius',
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
                final model = Provider.of<CylinderModel>(context, listen: false);
                model.setDimensions(
                  double.parse(radiusController.text),
                  double.parse(heightController.text),
                );
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Consumer<CylinderModel>(
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
