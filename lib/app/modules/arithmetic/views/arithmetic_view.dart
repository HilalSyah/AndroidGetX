import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/arithmetic_controller.dart';

class ArithmeticView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArithmeticController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Obx(() => Text(
                    controller.display.value,
                    style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Row(
            children: [
              calcButton('7', controller),
              calcButton('8', controller),
              calcButton('9', controller),
              calcButton('/', controller, Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('4', controller),
              calcButton('5', controller),
              calcButton('6', controller),
              calcButton('*', controller, Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('1', controller),
              calcButton('2', controller),
              calcButton('3', controller),
              calcButton('-', controller, Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('0', controller),
              calcButton('C', controller, Colors.red),
              calcButton('=', controller, Colors.green),
              calcButton('+', controller, Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  Widget calcButton(String label, ArithmeticController controller, [Color color = Colors.grey]) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          if (label == 'C') {
            controller.clear();
          } else if (label == '=') {
            controller.calculate();
          } else if ('+-*/'.contains(label)) {
            controller.operationClick(label);
          } else {
            controller.numClick(label);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.all(24.0),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    );
  }
}
