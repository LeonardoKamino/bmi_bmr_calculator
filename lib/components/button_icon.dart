import 'package:bmi_bmr_calculator/constants.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final Function onTap;
  final String iconTitle;
  final IconData icon;
  final Color color;

  ButtonIcon(
      {@required this.onTap,
      @required this.icon,
      @required this.iconTitle,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: kGenderIconSize,
            ),
            Text(
              iconTitle,
              style: kTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
