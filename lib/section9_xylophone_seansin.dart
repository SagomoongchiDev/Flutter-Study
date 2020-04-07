import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  buildKeyElement(List<Color> widgetColors, int iteratorNum) {
    var xylophoneWidget = <Widget>[];
    try {
      return createKeyWidget(xylophoneWidget, widgetColors, iteratorNum);
    } catch (e) {
      return e;
    }
  }

  List<Widget> createKeyWidget(
      targetWidgets, List<Color> widgetColors, int iteratorNum) {
    if (iteratorNum < 0 || iteratorNum > 7) {
      throw new FormatException();
    }
    for (var i = 0; i < iteratorNum; i++) {
      targetWidgets.add(
        Expanded(
          child: FlatButton(
            color: widgetColors[i],
            onPressed: () => playSound(i + 1),
          ),
        ),
      );
    }
    return targetWidgets;
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
              children: buildKeyElement([
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple
              ], 7),
            ),
          ),
        ),
      ),
    );
  }
}
