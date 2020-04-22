import 'package:flutter/material.dart';
import 'package:mi_card/section14/screen/price_screen.dart';

void main() => runApp(BitCoinTickerApp());

class BitCoinTickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
