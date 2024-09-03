import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bmi_controller.dart';

class BMIView extends StatelessWidget {
  const BMIView({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIController controller = Get.put(BMIController());

    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: const TextStyle(color: Colors.white), 
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                labelStyle:
                    const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      const BorderSide(color: Colors.yellow),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) =>
                  controller.weight.value = double.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 16),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Height (m)',
                labelStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.yellow),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) =>
                  controller.height.value = double.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 16),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Age',
                labelStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.yellow),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) =>
                  controller.age.value = int.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor:
                      Colors.yellow, // Warna teks pada tombol hitam
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: controller.calculateBMI,
                child: const Text('Calculate BMI', style: TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  'Your BMI is: ${controller.bmi.value.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )),
            Obx(() => Text(
                  'Your Age is: ${controller.age.value}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
