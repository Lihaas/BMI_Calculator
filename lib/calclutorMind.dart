import 'dart:math';

class calculatorMind {
  calculatorMind(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getNotation() {
    if (_bmi >= 25) {
      return "Start Dieting and exercising";
    } else if (_bmi > 18.5) {
      return "Your are fit , be happy and enjoy the life";
    } else {
      return "Starts eating faty food and be healthy";
    }
  }
}
