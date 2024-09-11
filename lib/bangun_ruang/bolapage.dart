import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang/bangun_ruang_model.dart';

class BolaPage extends StatefulWidget {
  @override
  _BolaPageState createState() => _BolaPageState();
}

class _BolaPageState extends State<BolaPage> {
  final _radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bangunRuangModel = Provider.of<BangunRuangModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bola Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Radius'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final radius = double.tryParse(_radiusController.text);

                if (radius != null) {
                  bangunRuangModel.hitungVolumeBola(radius);
                }
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Volume: ${bangunRuangModel.result.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
