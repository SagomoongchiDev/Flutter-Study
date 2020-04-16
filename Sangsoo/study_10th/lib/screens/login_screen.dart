import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import '../components/rounded_text_field.dart';
class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedTextField(
              borderColor: Colors.lightBlueAccent,
              onChanged: () {},
              hintText: 'Enter your Email',
            ),
            SizedBox(
              height: 8.0,
            ),
            RoundedTextField(
              borderColor: Colors.lightBlueAccent,
              onChanged: () {},
              hintText: 'Enter your password',
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              buttonColor: Colors.lightBlueAccent,
              buttonTitle: 'Log in',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

