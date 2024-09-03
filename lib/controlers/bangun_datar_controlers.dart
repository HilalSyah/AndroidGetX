import 'package:get/get.dart';
import 'dart:math';

class CalculatorController extends GetxController {
  var side = 0.0.obs;         // Persegi
  var length = 0.0.obs;       // Persegi Panjang
  var width = 0.0.obs;
  var radius = 0.0.obs;       // Lingkaran
  var base = 0.0.obs;         // Segitiga
  var height = 0.0.obs;

  // Menyimpan hasil perhitungan
  var squareArea = 0.0.obs;
  var rectangleArea = 0.0.obs;
  var circleArea = 0.0.obs;
  var triangleArea = 0.0.obs;

  void calculateSquareArea() {
    squareArea.value = side.value * side.value;
  }

  void calculateRectangleArea() {
    rectangleArea.value = length.value * width.value;
  }

  void calculateCircleArea() {
    circleArea.value = pi * radius.value * radius.value;
  }

  void calculateTriangleArea() {
    triangleArea.value = 0.5 * base.value * height.value;
  }
}
