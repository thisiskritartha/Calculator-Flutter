import 'package:calculator/controller/caculator_controller.dart';
import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "*",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    final calController = Get.find<CalculatorController>();

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Calculator'),
      //   centerTitle: true,
      // ),
      body: Column(
        children: [
          GetBuilder<CalculatorController>(builder: (context) {
            return outPutSection(calController);
          }),
          inPutSection(calController),
        ],
      ),
    );
  }

  //OutputSection
  Expanded outPutSection(CalculatorController calController) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 170.0,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    calController.userInput,
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    calController.userOutput,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Input Section
  Expanded inPutSection(CalculatorController calController) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: buttons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return CalcBtn(
                      onTap: () {
                        calController.clearInputAndOutput();
                      },
                      text: buttons[index]);
                case 1:
                  return CalcBtn(
                      text: buttons[index],
                      onTap: () {
                        calController.clearButtonAction();
                      });
                case 19:
                  return CalcBtn(
                      text: buttons[index],
                      onTap: () {
                        calController.calculateResult();
                      });
                default:
                  return CalcBtn(
                      text: buttons[index],
                      onTap: () {
                        calController.buttonTap(buttons, index);
                      });
              }
            }),
      ),
    );
  }
}
