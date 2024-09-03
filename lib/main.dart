import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/kubus.dart';
import 'models/balok.dart';
import 'models/bola.dart';
import 'models/kerucut.dart';
import 'models/limas.dart';
import 'models/prisma.dart';
import 'models/tabung.dart';
import 'menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CubeModel()),
        ChangeNotifierProvider(create: (_) => CuboidModel()),
        ChangeNotifierProvider(create: (_) => SphereModel()),
        ChangeNotifierProvider(create: (_) => ConeModel()),
        ChangeNotifierProvider(create: (_) => PyramidModel()),
        ChangeNotifierProvider(create: (_) => PrismModel()),
        ChangeNotifierProvider(create: (_) => CylinderModel()),
      ],
      child: MaterialApp(
        home: MenuScreen(),
      ),
    );
  }
}
