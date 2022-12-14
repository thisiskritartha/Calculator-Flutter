import 'package:calculator/controller/caculator_controller.dart';
import 'package:get/get.dart';

class CalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculatorController>(() => CalculatorController());
  }
}
