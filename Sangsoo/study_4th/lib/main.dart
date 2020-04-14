import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
            backgroundColor: Colors.blue, title: Text('Ask Me Anything')),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int picNum = 1;
  void click() {
    print('I got Clicked');
    setState(() {
      picNum = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: FlatButton(
            child: Image.asset('images/ball$picNum.png'), onPressed: click),
      ),
    );
  }
}
