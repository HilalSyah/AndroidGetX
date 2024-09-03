import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controlers/bangun_datar_controlers.dart';

class LingkaranPage extends StatelessWidget {
  final CalculatorController _controller = Get.put(CalculatorController());

  LingkaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Luas Lingkaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Masukkan radius lingkaran:'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Radius'),
              onChanged: (value) {
                _controller.radius.value = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.calculateCircleArea();
              },
              child: Text('Hitung Luas Lingkaran'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Luas Lingkaran: ${_controller.circleArea.value.toStringAsFixed(2)}');
            }),
          ],
        ),
      ),
    );
  }
}
