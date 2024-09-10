import 'package:get/get.dart';
import 'package:kalkulator_aritmatika/app/modules/arithmetic/controllers/arithmetic_controller.dart';
import 'package:kalkulator_aritmatika/app/modules/arithmetic/views/arithmetic_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/arithmetic';

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => ArithmeticView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ArithmeticController>(() => ArithmeticController());
      }),
    ),
  ];
}
