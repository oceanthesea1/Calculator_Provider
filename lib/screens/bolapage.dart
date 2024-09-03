import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/models/bola.dart';

class BolaPage extends StatelessWidget {
  final TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bola Bangun Ruang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bola',
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
            ElevatedButton(
              onPressed: () {
                final model = Provider.of<SphereModel>(context, listen: false);
                model.setRadius(double.parse(radiusController.text));
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Consumer<SphereModel>(
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
