import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'YOU HAVE A HIGHER BMI, YOU GOTTA CONTROL YOU DIET';
    } else if (_bmi > 18.5) {
      return 'CONGRATULATIONS ! YOU ARE FIT AND NORMAL';
    } else
      return 'EAT MORE BUDDY, YOUR INDEX IS LOW ';
  }
}
