import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang/bangun_ruang_model.dart';

class KubusPage extends StatefulWidget {
  @override
  _KubusPageState createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final _sisiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bangunRuangModel = Provider.of<BangunRuangModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kubus Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Sisi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final sisi = double.tryParse(_sisiController.text);

                if (sisi != null) {
                  bangunRuangModel.hitungVolumeKubus(sisi);
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
