import 'package:flutter/material.dart';
import 'package:zong_app/routes/MyHomePage.dart';

import 'constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zong App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kMyColor,
      ),
      home: MyHomePage(),
    );
  }
}
