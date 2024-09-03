import 'package:get/get.dart';

class BMIController extends GetxController {
  var weight = 0.0.obs;
  var height = 0.0.obs;
  var age = 0.obs;
  var bmi = 0.0.obs;

  void calculateBMI() {
    if (height.value > 0) {
      double heightInMeters = height.value / 100;
      bmi.value = weight.value / (heightInMeters * heightInMeters);
      print('Weight: ${weight.value}, Height: $heightInMeters m, BMI: ${bmi.value}');
    } else {
      print('Invalid height: ${height.value}');
    }
  }
}
