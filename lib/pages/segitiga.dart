import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controlers/bangun_datar_controlers.dart';

class SegitigaPage extends StatelessWidget {
  final CalculatorController _controller = Get.put(CalculatorController());

  SegitigaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Luas Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Masukkan alas segitiga:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Alas'),
              onChanged: (value) {
                _controller.base.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            Text('Masukkan tinggi segitiga:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
              onChanged: (value) {
                _controller.height.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.calculateTriangleArea();
              },
              child: Text('Hitung Luas Segitiga'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Luas Segitiga: ${_controller.triangleArea.value.toStringAsFixed(2)}');
            }),
          ],
        ),
      ),
    );
  }
}
