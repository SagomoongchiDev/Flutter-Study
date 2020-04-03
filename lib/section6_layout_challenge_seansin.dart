import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(1.0),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
