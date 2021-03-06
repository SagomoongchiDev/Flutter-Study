import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {@required this.borderColor,
      @required this.onChanged,
      @required this.hintText,
      @required this.isObscure,
      this.keyboard});
  final bool isObscure;
  final Function onChanged;
  final Color borderColor;
  final String hintText;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: keyboard,
      obscureText: isObscure,
      style: TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintStyle: (TextStyle(color: Colors.grey)),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
