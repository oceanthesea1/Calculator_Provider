import 'package:flutter/material.dart';
import 'package:calculator_provider/widgets/shape_calculator_card.dart';
import 'package:calculator_provider/models/kubus.dart';
import 'package:calculator_provider/models/balok.dart';
import 'package:calculator_provider/models/kerucut.dart';
import 'package:calculator_provider/models/limas.dart';
import 'package:calculator_provider/models/prisma.dart';
import 'package:calculator_provider/models/tabung.dart';
import 'package:calculator_provider/models/bola.dart';



class ShapeCalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Ruang'),
      ),
      body: ListView(
        children: [
          ShapeCalculatorCard<CubeModel>(title: 'Cube', dimensionHint: 'Side Length'),
          ShapeCalculatorCard<CuboidModel>(title: 'Cuboid', dimensionHint: 'Length, Width, Height'),
          ShapeCalculatorCard<PrismModel>(title: 'Prism', dimensionHint: 'Base Area, Height'),
          ShapeCalculatorCard<PyramidModel>(title: 'Pyramid', dimensionHint: 'Base Area, Height'),
          ShapeCalculatorCard<CylinderModel>(title: 'Cylinder', dimensionHint: 'Radius, Height'),
          ShapeCalculatorCard<ConeModel>(title: 'Cone', dimensionHint: 'Radius, Height'),
          ShapeCalculatorCard<SphereModel>(title: 'Sphere', dimensionHint: 'Radius'),
        ],
      ),
    );
  }
}
