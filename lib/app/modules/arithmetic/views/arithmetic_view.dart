import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/arithmetic_controller.dart';

class ArithmeticView extends StatefulWidget {
  @override
  _ArithmeticViewState createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // Pastikan controller ini diinisialisasi dengan benar di aplikasi
  final ArithmeticController controller = Get.find<ArithmeticController>();

  @override
  Widget build(BuildContext context) {
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
              calcButton('7'),
              calcButton('8'),
              calcButton('9'),
              calcButton('/', Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('4'),
              calcButton('5'),
              calcButton('6'),
              calcButton('*', Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('1'),
              calcButton('2'),
              calcButton('3'),
              calcButton('-', Colors.orange),
            ],
          ),
          Row(
            children: [
              calcButton('0'),
              calcButton('C', Colors.red),
              calcButton('=', Colors.green),
              calcButton('+', Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  Widget calcButton(String label, [Color color = Colors.grey]) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // Pastikan metode-metode ini ada di ArithmeticController
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
