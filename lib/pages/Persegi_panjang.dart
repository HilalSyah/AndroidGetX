import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "../controlers/bangun_datar_controlers.dart";

class PersegiPanjangPage extends StatelessWidget {
  final CalculatorController _controller = Get.put(CalculatorController());

  PersegiPanjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Luas Persegi Panjang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Masukkan panjang persegi panjang:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang'),
              onChanged: (value) {
                _controller.length.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            Text('Masukkan lebar persegi panjang:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Lebar'),
              onChanged: (value) {
                _controller.width.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.calculateRectangleArea();
              },
              child: Text('Hitung Luas Persegi Panjang'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Luas Persegi Panjang: ${_controller.rectangleArea.value.toStringAsFixed(2)}');
            }),
          ],
        ),
      ),
    );
  }
}
