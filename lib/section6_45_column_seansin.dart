import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // width가 가장 넓은 자식의 오른쪽 정렬
            //crossAxisAlignment: CrossAxisAlignment.end,
            // 자식요소들의 너비/높이를 디바이스 너비/높이만큼 늘림
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Container(
                //height: 100.0,
                // 디바이스 화면의 너비를 전부 차지하기 위함 (Bad)
                // width : double.infinity
                color: Colors.white,
                child: Text('Container 1'),
              ),
              //사이즈를 설정하는 위젯 (공백 너비 혹은 높이를 주기위해서 사용)
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                // 디바이스 화면의 너비를 전부 차지하기 위함 (Bad)
                // width : double.infinity
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100.0,
                // 디바이스 화면의 너비를 전부 차지하기 위함 (Bad)
                // width : double.infinity
                color: Colors.red,
                child: Text('Container 3'),
              ),
              Container(
                width: double.infinity,
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
