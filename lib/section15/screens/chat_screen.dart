import 'package:flutter/material.dart';
import 'package:mi_card/section13/utilites/constants.dart';
import 'package:mi_card/section15/utilities/constants.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            //TODO : #1 로그아웃 버튼 기능 구현
            onPressed: () {},
          )
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      //TODO : #2 사용자 입력 기능 구현
                      onChanged: (value) {},
                      decoration: kMessageTextStyle,
                    ),
                  ),
                  FlatButton(
                      //TODO : #3 메세지 보내기 기능 구현
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: kSendButtonTextStyle,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
