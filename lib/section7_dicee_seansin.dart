import 'package:flutter/material.dart';
import 'dart:math' show Random;

void main() => runApp(DiceApp());

typedef void MyCallback(int foo);

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

class DicePage extends StatefulWidget {
  @override
  State createState() => _RandomDiceGenerator();
}

class _RandomDiceGenerator extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void generateRandomNumber(String str) {
    final _random = new Random.secure();
    int next(int min, int max) => min + _random.nextInt(max - min);
    if (identical('left', str)) {
      setState(() => leftDiceNum = next(1, 7));
    } else {
      setState(() => rightDiceNum = next(1, 7));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () => generateRandomNumber('left'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: () => generateRandomNumber('right'),
            ),
          ),
        ],
      ),
    );
  }
}
