import 'package:bmi_bmr_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/components/bottom_button.dart';
import 'package:bmi_bmr_calculator/components/button_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_bmr_calculator/constants.dart';
import 'package:bmi_bmr_calculator/components/selector_option.dart';
import 'package:bmi_bmr_calculator/components/round_icon_button.dart';
import 'package:bmi_bmr_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_bmr_calculator/bmi_calculator.dart';
import 'package:bmi_bmr_calculator/screens/bmr_result_screen.dart';
import 'package:bmi_bmr_calculator/bmr_calculator.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender = Gender.male;
  ExerciseLevel exerciseLevel = ExerciseLevel.none;
  int height = 170;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kInactiveColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    //select gender
                    ReusableCard(
                      color: kInactiveColor,
                      cardChild: Row(
                        children: <Widget>[
                          Expanded(
                            child: ButtonIcon(
                              icon: FontAwesomeIcons.mars,
                              iconTitle: 'MALE',
                              color: selectedGender == Gender.male
                                  ? kActiveColor
                                  : kInactiveColor,
                              onTap: () {
                                setState(() {
                                  selectedGender = Gender.male;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: ButtonIcon(
                              icon: FontAwesomeIcons.venus,
                              iconTitle: 'FEMALE',
                              color: selectedGender == Gender.female
                                  ? kActiveColor
                                  : kInactiveColor,
                              onTap: () {
                                setState(() {
                                  selectedGender = Gender.female;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //select activity level
                    ReusableCard(
                      color: kInactiveColor,
                      cardChild: Column(
                        children: <Widget>[
                          SelectorOption(
                            text: 'No exercise',
                            onTap: () {
                              setState(() {
                                exerciseLevel = ExerciseLevel.none;
                              });
                            },
                            color: exerciseLevel == ExerciseLevel.none
                                ? kActiveColor
                                : kInactiveColor,
                          ),
                          SelectorOption(
                            text: 'Light exercise',
                            onTap: () {
                              setState(() {
                                exerciseLevel = ExerciseLevel.light;
                              });
                            },
                            color: exerciseLevel == ExerciseLevel.light
                                ? kActiveColor
                                : kInactiveColor,
                          ),
                          SelectorOption(
                            text: 'Moderate exercise',
                            onTap: () {
                              setState(() {
                                exerciseLevel = ExerciseLevel.moderate;
                              });
                            },
                            color: exerciseLevel == ExerciseLevel.moderate
                                ? kActiveColor
                                : kInactiveColor,
                          ),
                          SelectorOption(
                            text: 'Very Active',
                            onTap: () {
                              setState(() {
                                exerciseLevel = ExerciseLevel.heavy;
                              });
                            },
                            color: exerciseLevel == ExerciseLevel.heavy
                                ? kActiveColor
                                : kInactiveColor,
                          ),
                          SelectorOption(
                            text: 'Extra active',
                            onTap: () {
                              setState(() {
                                exerciseLevel = ExerciseLevel.superHeavy;
                              });
                            },
                            color: exerciseLevel == ExerciseLevel.superHeavy
                                ? kActiveColor
                                : kInactiveColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //input height
              ReusableCard(
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kTitleTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text('$height', style: kNumberTextStyle),
                        Text(
                          'cm',
                          style: kMeasureTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: kSliderThemeData,
                      child: Slider(
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        max: kMaxSliderValue,
                        min: kMinSliderValue,
                        value: height.toDouble(),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    //input weight
                    ReusableCard(
                      color: kActiveColor,
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kTitleTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text('$weight', style: kNumberTextStyle),
                              Text(
                                ' Kg',
                                style: kMeasureTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //input height
                    ReusableCard(
                      color: kActiveColor,
                      cardChild: Column(
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '$age',
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: BottomButton(
                      text: 'Calculate BMI',
                      onPressed: () {
                        BMICalculator bmiCalc =
                            BMICalculator(height: height, weight: weight);
                        String bmi = bmiCalc.calculateBMI();
                        String result = bmiCalc.getResult();
                        String interpretation = bmiCalc.getInterpretation();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BMIResultScreen(
                              bmi: bmi,
                              result: result,
                              interpretation: interpretation,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: BottomButton(
                      text: 'Calculate BMR',
                      onPressed: () {
                        BMRCalculator bmrCalculator = BMRCalculator(
                          weight: weight,
                          height: height,
                          age: age,
                          gender: selectedGender,
                          exerciseLevel: exerciseLevel,
                        );

                        String bmr = bmrCalculator.calculateBMR();
                        String harrisBenedictResult =
                            bmrCalculator.calculateHarrisBenedictForm();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BMRResultScreen(
                              bmr: bmr,
                              harrisBenedictResult: harrisBenedictResult,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
