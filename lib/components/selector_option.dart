import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/constants.dart';

class SelectorOption extends StatelessWidget {
  final String text;
  final Function onTap;
  final ExerciseLevel selectedExerciseLevel;
  final ExerciseLevel optionExerciseLevel;

  SelectorOption(
      {this.selectedExerciseLevel,
      this.optionExerciseLevel,
      this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: selectedExerciseLevel == optionExerciseLevel
              ? kActiveColor
              : kInactiveColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: kSelectorOptionTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
