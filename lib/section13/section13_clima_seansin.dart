import 'package:flutter/material.dart';
import 'package:mi_card/section13/screens/loading_screen.dart';

void main() => runApp(ClimaApp());

class ClimaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
