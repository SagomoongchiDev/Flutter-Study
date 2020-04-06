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
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              // VoidCallback
              onPressed: () {
                print('Left button got pressed.');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice2.png'),
              // VoidCallback
              onPressed: () => print('Right button got pressed.'),
            ),
          ),
        ],
      ),
    );
  }
}
