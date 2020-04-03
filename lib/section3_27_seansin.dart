import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
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
