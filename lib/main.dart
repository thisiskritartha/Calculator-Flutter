import 'package:flutter/material.dart';
import 'bindings/calculator_binding.dart';
import 'home_page.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: CalculatorBinding(),
      title: 'Calculator',
      home: HomePage(),
    );
  }
}
