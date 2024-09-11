import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator_provider/bangun_ruang//bangun_ruang_model.dart';

class BalokPage extends StatefulWidget {
  @override
  _BalokPageState createState() => _BalokPageState();
}

class _BalokPageState extends State<BalokPage> {
  final _panjangController = TextEditingController();
  final _lebarController = TextEditingController();
  final _tinggiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bangunRuangModel = Provider.of<BangunRuangModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Balok Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _panjangController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
            ),
            TextField(
              controller: _lebarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
            ),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final panjang = double.tryParse(_panjangController.text);
                final lebar = double.tryParse(_lebarController.text);
                final tinggi = double.tryParse(_tinggiController.text);

                if (panjang != null && lebar != null && tinggi != null) {
                  bangunRuangModel.hitungVolumeBalok(panjang, lebar, tinggi);
                }
              },
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text('Volume: ${bangunRuangModel.result.toStringAsFixed(2)}'),
            // Tambahkan Text untuk luas permukaan jika diperlukan
          ],
        ),
      ),
    );
  }
}
