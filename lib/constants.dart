import 'package:flutter/material.dart';

enum Gender { male, female }

enum ExerciseLevel {
  none,
  light,
  moderate,
  heavy,
  superHeavy,
}

const double kBottomButtonHeight = 60.0;
const Color kInactiveColor = Color(0xFF0A0D22);
const Color kActiveColor = Color(0xFF222539);
const Color kPinkColor = Color(0xFFEB1555);
const Color kSliderOverlayColor = Color(0x44EB1555);
const double kMaxSliderValue = 220;
const double kMinSliderValue = 120;
const double kGenderIconSize = 70.0;

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w600,
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w700,
);

const TextStyle kSelectorOptionTextStyle = TextStyle(
  fontSize: 16.5,
);

const SliderThemeData kSliderThemeData = SliderThemeData(
  inactiveTrackColor: Colors.grey,
  activeTrackColor: kPinkColor,
  thumbColor: kPinkColor,
  overlayColor: kSliderOverlayColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
);

const kBMIResultHeaderTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w600,
);

const kBMIResultNumberTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w600,
);

const kResultInterpretationTextStyle = TextStyle(
  fontSize: 20.0,
);

const kMeasureTextStyle = TextStyle(
  fontSize: 20.0,
);

const kTextRangeTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 24,
);

const kExplanationTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 18,
);

const kBMRTextTextStyle = TextStyle(
  fontSize: 30,
);

const kBMRResultNumberTextStyle = TextStyle(
  fontSize: 55,
);
