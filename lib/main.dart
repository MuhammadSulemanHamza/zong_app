import 'package:flutter/material.dart';
import 'package:zong_app/routes/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

MaterialColor myColor = const MaterialColor(
    0xFF93c01d,
    <int, Color>{
      50: Color(0xFF93c01d),
      100:  Color(0xFF93c01d),
      200:  Color(0xFF93c01d),
      300:  Color(0xFF93c01d),
      400:  Color(0xFF93c01d),
      500:  Color(0xFF93c01d),
      600:  Color(0xFF93c01d),
      700:  Color(0xFF93c01d),
      800:  Color(0xFF93c01d),
      900:  Color(0xFF93c01d),
    },
  );

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zong App',
      theme: ThemeData(
        primarySwatch: myColor,
      ),
      home: MyHomePage(),
    );
  }
}
