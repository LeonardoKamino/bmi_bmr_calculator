import 'package:bmi_bmr_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/constants.dart';
import 'package:bmi_bmr_calculator/components/bottom_button.dart';

class BMIResultScreen extends StatelessWidget {
  BMIResultScreen({this.interpretation, this.bmi, this.result});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kInactiveColor,
        appBar: AppBar(
          title: Text('BMI Result'),
          backgroundColor: kInactiveColor,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'YOUR BMI RESULT',
                style: kBMIResultHeaderTextStyle,
              ),
              ReusableCard(
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$result',
                      style: TextStyle(
                        color: result == 'NORMAL' ? Colors.green : Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$bmi',
                      style: kBMIResultNumberTextStyle,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Normal BMI range:',
                          style: kTextRangeTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '18.5-25 kg/m2',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        '$interpretation',
                        style: kResultInterpretationTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              BottomButton(
                text: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
