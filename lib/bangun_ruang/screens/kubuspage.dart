import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang/models/kubus.dart';

class KubusPage extends StatelessWidget {
  final TextEditingController sideController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cube Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cube',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: sideController,
              decoration: InputDecoration(
                labelText: 'Side',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final model = Provider.of<CubeModel>(context, listen: false);
                model.setSideLength(double.parse(sideController.text));
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Consumer<CubeModel>(
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
