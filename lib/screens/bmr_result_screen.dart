import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/constants.dart';
import 'package:bmi_bmr_calculator/components/reusable_card.dart';
import 'package:bmi_bmr_calculator/components/bottom_button.dart';

class BMRResultScreen extends StatelessWidget {
  BMRResultScreen({this.bmr, this.harrisBenedictResult});
  final String bmr;
  final String harrisBenedictResult;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kInactiveColor,
        appBar: AppBar(
          backgroundColor: kInactiveColor,
          title: Text('BMR Result'),
        ),
        body: Column(
          children: <Widget>[
            Text('YOUR BMR RESULT', style: kBMIResultHeaderTextStyle),
            ReusableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'BMR:',
                    style: kBMRTextTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        bmr,
                        style: kBMRResultNumberTextStyle,
                      ),
                      Text(
                        ' kCal/24hrs',
                        style: kMeasureTextStyle,
                      )
                    ],
                  ),
                  Text(
                    'Number of calories required to keep your body functioning at rest.',
                    style: kExplanationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Harris Benedict Formula :',
                    style: kBMRTextTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        harrisBenedictResult,
                        style: kBMRResultNumberTextStyle,
                      ),
                      Text(
                        ' kCal/24hrs',
                        style: kMeasureTextStyle,
                      )
                    ],
                  ),
                  Text(
                    'Total calorie intake required to maintain your current weight.',
                    style: kExplanationTextStyle,
                    textAlign: TextAlign.center,
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
    );
  }
}
