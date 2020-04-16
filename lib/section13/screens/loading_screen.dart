import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          //TODO: #1 현재 위치를 가져오는 함수 구현
          onPressed: () {},
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
