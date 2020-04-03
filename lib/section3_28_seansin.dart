import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2F1.bp.blogspot.com%2F-e37_Cw5sGvM%2FTuEADCdJ3kI%2FAAAAAAAAAv8%2FZ4RzI9cfXm4%2Fs1600%2Fdiamondclear.png&f=1&nofb=1'),
          ),
        ),
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.indigo[600],
        ),
      ),
    );
  }
}
