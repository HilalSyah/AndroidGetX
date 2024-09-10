import 'package:flutter/material.dart';
import 'package:kalkulator_aritmatika/app/modules/arithmetic/views/arithmetic_view.dart';

void main() {
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
