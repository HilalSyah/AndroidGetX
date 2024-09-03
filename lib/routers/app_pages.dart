import 'package:bangun_datar_getx/bmi/views/bmi_views.dart';
import 'package:get/get.dart';


abstract class Routes {
  static const BMI = '/bmi';
}

abstract class AppPages {
  static const INITIAL = Routes.BMI;

  static final routes = [
    GetPage(name: Routes.BMI, page:() => BMIView ()),
  ];
}