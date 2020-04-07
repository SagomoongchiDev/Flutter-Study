import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(){
    final player = AudioCache();
    player.play('note1.wav');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.red,
              onPressed: () {
                playSound();
              },
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.indigo,
            ),
            FlatButton(
              onPressed: () {
                playSound();
              },
              color: Colors.purple,
            ),
          ],
        )),
      ),
    );
  }
}
