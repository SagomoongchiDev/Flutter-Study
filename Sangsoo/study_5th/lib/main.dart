import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNum, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            buildKey(color: Colors.red,soundNum: 1),
            buildKey(color: Colors.orange,soundNum: 2),
            buildKey(color: Colors.yellow,soundNum: 3),
            buildKey(color: Colors.green,soundNum: 4),
            buildKey(color: Colors.blue,soundNum: 5),
            buildKey(color: Colors.indigo,soundNum: 6),
            buildKey(color: Colors.purple,soundNum: 7),
          ],
        )),
      ),
    );
  }
}
