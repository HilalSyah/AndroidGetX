import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controlers/bangun_datar_controlers.dart';

class PersegiPage extends StatelessWidget {
  final CalculatorController _controller = Get.put(CalculatorController());

  PersegiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Luas Persegi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Masukkan panjang sisi persegi:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang sisi'),
              onChanged: (value) {
                _controller.side.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.calculateSquareArea();
              },
              child: Text('Hitung Luas Persegi'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Luas Persegi: ${_controller.squareArea.value.toStringAsFixed(2)}');
            }),
          ],
        ),
      ),
    );
  }
}
