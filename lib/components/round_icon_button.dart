import 'package:flutter/material.dart';
import 'package:bmi_bmr_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 49.0,
        height: 49.0,
      ),
      fillColor: kInactiveColor,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 25,
      ),
    );
  }
}
