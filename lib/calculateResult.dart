import 'dart:math';

class CalculateResult {
  double height;
  int weight;
  String message = "";
  double result = 0;

  CalculateResult({
    required this.height,
    required this.weight,
  });

  String getResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(2);
  }

  String getMessage() {
    if (result < 18.5) {
      message = "Underweight";
      return message;
    } else if (result > 18.5 && result < 25) {
      message = "Normal";
      return message;
    } else if (result > 25) {
      message = "Overweight";
      return message;
    } else {
      return message;
    }
  }
}
