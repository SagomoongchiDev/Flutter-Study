import 'package:flutter/material.dart';
import 'package:mi_card/section12/pages/components/ReusableCard.dart';
import 'package:mi_card/section12/pages/constants/bmi_calculator_constants.dart';
import 'package:mi_card/section12/pages/input_page.dart';

import 'components/calculateBtn.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key key,
      @required this.bmiResult,
      @required this.resultText,
      @required this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          calculateBtn(
            title: 'RE-CALCULATE',
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
