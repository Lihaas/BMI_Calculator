import 'package:flutter/material.dart';
import 'inputData.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.fallback().copyWith(
        primaryColor: Color(0xFFd50000),
      ),
      home: InputData(),
    );
  }
}
