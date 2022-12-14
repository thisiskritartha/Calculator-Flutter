import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var userInput = '';
  var userOutput = '';

  clearInputAndOutput() {
    userInput = '';
    userOutput = '';
    update();
  }

  clearButtonAction() {
    userInput = userInput.substring(0, userInput.length - 1);
    update();
  }

  buttonTap(List<String> button, int index) {
    userInput += button[index];
    update();
  }

  calculateResult() {
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);
    userOutput = eval.toString();
    update();
  }
}
