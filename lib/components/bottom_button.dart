import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kPinkColor,
      onPressed: onPressed,
      child: Container(
        height: kBottomButtonHeight,
        child: Center(
            child: Text(
          text,
          style: kTitleTextStyle,
        )),
      ),
    );
  }
}
