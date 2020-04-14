import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_card/section12/pages/constants/bmi_calculator_constants.dart';

class CustomIconCardChild extends StatelessWidget {
  CustomIconCardChild({@required this.iconName, @required this.iconText});

  final String iconName;
  final String iconText;

  IconData fontAwesomeIconFromString(String name) {
    switch (name) {
      case 'mars':
        return FontAwesomeIcons.mars;
      case 'venus':
        return FontAwesomeIcons.venus;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          fontAwesomeIconFromString(iconName),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(iconText, style: labelTextStyle)
      ],
    );
  }
}
