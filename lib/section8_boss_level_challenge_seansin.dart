import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicGBallApp());

class MagicGBallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  var ballNumber = 1;

  void generateRandomNumber() {
    final _random = new Random.secure();
    int next(int min, int max) => min + _random.nextInt(max - min);
    setState(() => ballNumber = next(1, 6));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () => generateRandomNumber(),
        ),
      ),
    );
  }
}
