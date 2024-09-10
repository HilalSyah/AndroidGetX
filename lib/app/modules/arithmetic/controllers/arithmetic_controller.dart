import 'package:get/get.dart';

class ArithmeticController extends GetxController {
  var display = '0'.obs;
  var firstNum = 0.0;
  var secondNum = 0.0;
  var operation = ''.obs;

  void numClick(String num) {
    if (display.value == '0') {
      display.value = num;
    } else {
      display.value += num;
    }
  }

  void operationClick(String op) {
    firstNum = double.parse(display.value);
    operation.value = op;
    display.value = '0';
  }

  void calculate() {
    secondNum = double.parse(display.value);
    switch (operation.value) {
      case '+':
        display.value = (firstNum + secondNum).toString();
        break;
      case '-':
        display.value = (firstNum - secondNum).toString();
        break;
      case '*':
        display.value = (firstNum * secondNum).toString();
        break;
      case '/':
        display.value = (firstNum / secondNum).toString();
        break;
      default:
        display.value = 'Error';
        break;
    }
  }

  void clear() {
    display.value = '0';
    firstNum = 0.0;
    secondNum = 0.0;
    operation.value = '';
  }
}
