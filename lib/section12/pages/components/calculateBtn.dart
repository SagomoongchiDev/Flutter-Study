import 'package:flutter/material.dart';
import 'package:mi_card/section12/pages/constants/bmi_calculator_constants.dart';

import '../result_page.dart';

// ignore: camel_case_types
class calculateBtn extends StatelessWidget {
  final String title;
  final Function onPress;

  const calculateBtn({
    Key key,
    this.title,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
      ),
    );
  }
}
