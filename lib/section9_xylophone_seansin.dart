import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var children = <Widget>[];

  static const colors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  List<Widget> buildKeyElement() {
    for (var i = 0; i < 7; i++) {
      children.add(
        Expanded(
          child: FlatButton(
            color: colors[i],
            onPressed: () => playSound(i + 1),
          ),
        ),
      );
    }
    return children;
  }

  void playSound(int scale) {
    final player = AudioCache();
    player.play('sounds/note$scale.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildKeyElement(),
            ),
          ),
        ),
      ),
    );
  }
}
