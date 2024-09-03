import 'package:get/get.dart';
import 'package:getx_kalkulator_bmi/app/modules/bmi/views/bmi_views.dart';


abstract class Routes {
  static const BMI = '/bmi';
}

abstract class AppPages {
  static const INITIAL = Routes.BMI;

  static final routes = [
    GetPage(name: Routes.BMI, page:() => BMIView ()),
  ];
}