import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Container(
                width: 50.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 50.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 50.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
