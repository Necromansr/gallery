import 'package:flutter/material.dart';
import 'pages/homePage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Image Demo';

    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}








