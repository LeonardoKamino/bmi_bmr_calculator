import 'constants.dart';

class BMRCalculator {
  int age;
  int weight;
  int height;
  Gender gender;
  ExerciseLevel exerciseLevel;
  double bmr;

  BMRCalculator(
      {this.exerciseLevel, this.weight, this.height, this.age, this.gender});

  //calculation based on this article https://www.diabetes.co.uk/bmr-calculator.html
  String calculateBMR() {
    if (gender == Gender.male) {
      bmr = 66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
      return bmr.toStringAsFixed(1);
    } else {
      bmr = 655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age);
      return bmr.toStringAsFixed(1);
    }
  }

  String calculateHarrisBenedictForm() {
    switch (exerciseLevel) {
      case ExerciseLevel.none:
        {
          return (bmr * 1.2).toStringAsFixed(1);
        }
        break;
      case ExerciseLevel.light:
        {
          return (bmr * 1.375).toStringAsFixed(1);
        }
        break;
      case ExerciseLevel.moderate:
        {
          return (bmr * 1.55).toStringAsFixed(1);
        }
        break;
      case ExerciseLevel.heavy:
        {
          return (bmr * 1.725).toStringAsFixed(1);
        }
        break;
      case ExerciseLevel.superHeavy:
        {
          return (bmr * 1.9).toStringAsFixed(1);
        }
        break;
    }
    return '';
  }
}
