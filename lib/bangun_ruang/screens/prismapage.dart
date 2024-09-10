import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang/models/prisma.dart';

class PrismaPage extends StatelessWidget {
  final TextEditingController baseAreaController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController basePerimeterController = TextEditingController(); // New controller for base perimeter

  @override
  Widget build(BuildContext context) {
    final prismModel = Provider.of<PrismModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Prisma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: baseAreaController,
              decoration: InputDecoration(
                labelText: 'Base Area',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                labelText: 'Height',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField( // New TextField for base perimeter
              controller: basePerimeterController,
              decoration: InputDecoration(
                labelText: 'Base Perimeter',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double baseArea = double.tryParse(baseAreaController.text) ?? 0.0;
                final double height = double.tryParse(heightController.text) ?? 0.0;
                final double basePerimeter = double.tryParse(basePerimeterController.text) ?? 0.0; // Parse base perimeter

                prismModel.setDimensions(baseArea, height, basePerimeter);
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Volume: ${prismModel.volume.toStringAsFixed(2)}'),
            Text('Surface Area: ${prismModel.surfaceArea.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
