import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/models/balok.dart';
import 'package:calculator_provider/models/bola.dart';
import 'package:calculator_provider/models/kerucut.dart';
import 'package:calculator_provider/models/kubus.dart';
import 'package:calculator_provider/models/limas.dart';
import 'package:calculator_provider/models/prisma.dart';
import 'package:calculator_provider/models/tabung.dart';

class ShapeCalculatorCard<T> extends StatelessWidget {
  final String title;
  final String dimensionHint;

  ShapeCalculatorCard({required this.title, required this.dimensionHint});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<T>(context);

    TextEditingController dimensionController1 = TextEditingController();
    TextEditingController dimensionController2 = TextEditingController();

    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: dimensionController1,
              decoration: InputDecoration(
                labelText: dimensionHint.split(', ')[0],
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8),
            if (dimensionHint.contains(', '))
              TextField(
                controller: dimensionController2,
                decoration: InputDecoration(
                  labelText: dimensionHint.split(', ')[1],
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                if (model is PyramidModel) {
                  model.setDimensions(
                    double.parse(dimensionController1.text),
                    double.parse(dimensionController2.text),
                  );
                } else if (model is CylinderModel) {
                  model.setDimensions(
                    double.parse(dimensionController1.text),
                    double.parse(dimensionController2.text),
                  );
                } else if (model is CubeModel) {
                  model.setSideLength(double.parse(dimensionController1.text));
                } else if (model is CuboidModel) {
                  model.setDimensions(
                    double.parse(dimensionController1.text),
                    double.parse(dimensionController2.text),
                    double.parse(dimensionController2.text), // Example dimensions; adjust as needed
                  );
                } else if (model is ConeModel) {
                  model.setDimensions(
                    double.parse(dimensionController1.text),
                    double.parse(dimensionController2.text),
                  );
                } else if (model is SphereModel) {
                  model.setRadius(double.parse(dimensionController1.text));
                } else if (model is PrismModel) {
                  model.setDimensions(
                    double.parse(dimensionController1.text),
                    double.parse(dimensionController2.text),
                    double.parse(dimensionController2.text), // Example base perimeter; adjust as needed
                  );
                }
                // Notify listeners to update the UI
                (model as ChangeNotifier).notifyListeners();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 8),
            if (model is dynamic)
              Text(
                'Volume: ${(model as dynamic).volume}',
                style: TextStyle(fontSize: 18),
              ),
            if (model is dynamic)
              Text(
                'Surface Area: ${(model as dynamic).surfaceArea}',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
