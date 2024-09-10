import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/arithmetic/controllers/arithmetic_controller.dart'; // Pastikan path ini benar
import 'app/modules/arithmetic/views/arithmetic_view.dart'; // Pastikan path ini benar

void main() {
  // Register the controller
  Get.put(ArithmeticController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArithmeticView(),
    );
  }
}
