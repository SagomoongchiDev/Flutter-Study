import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //리팩토링
          child: Image.asset('mages/dice1.png'),
        ),
        Expanded(
          child: Image(
            image: AssetImage('images/dice2.png'),
          ),
        ),
      ],
    );
  }
}
