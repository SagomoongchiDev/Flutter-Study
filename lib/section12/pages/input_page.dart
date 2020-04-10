import 'package:flutter/material.dart';

import 'components/CustomIconCardChild.dart';
import 'components/ReusableCard.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender){
    if(notFemale(gender)){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  bool notFemale(int gender){
    if(gender == 0){
      return true;
    } else {
      return false;
    }
  }

  Color cardTrigger(Color cardWidgetColor){
    if(cardWidgetColor == inactiveCardColor){
      return activeCardColor;
    } else {
      return inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () => ,
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: CustomIconCardChild(
                        iconName: 'mars',
                        iconText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: CustomIconCardChild(
                      iconName: 'venus',
                      iconText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
