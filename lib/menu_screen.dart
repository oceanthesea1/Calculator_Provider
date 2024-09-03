import 'package:flutter/material.dart';
import 'screens/balokpage.dart';
import 'screens/bolapage.dart';
import 'screens/kerucutpage.dart';
import 'screens/kubuspage.dart';
import 'screens/limaspage.dart';
import 'screens/prismapage.dart';
import 'screens/tabungpage.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Menu'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildMenuButton(context, 'Balok', BalokPage()),
          _buildMenuButton(context, 'Bola', BolaPage()),
          _buildMenuButton(context, 'Kerucut', KerucutPage()),
          _buildMenuButton(context, 'Kubus', KubusPage()),
          _buildMenuButton(context, 'Limas', LimasPage()),
          _buildMenuButton(context, 'Prisma', PrismaPage()),
          _buildMenuButton(context, 'Tabung', TabungPage()),
        ],
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(title),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
          textStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
