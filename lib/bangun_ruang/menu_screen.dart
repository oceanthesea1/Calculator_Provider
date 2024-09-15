import 'package:flutter/material.dart';
import 'balokpage.dart';
import 'bolapage.dart';
import 'kubuspage.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Bangun Ruang',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildMenuButton(context, 'Balok', BalokPage()),
          _buildMenuButton(context, 'Bola', BolaPage()),
          _buildMenuButton(context, 'Kubus', KubusPage()),
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
