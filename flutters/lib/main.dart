import 'package:flutter/material.dart';
import 'MainScreen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Arguments',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.orange,
        hintColor: Colors.white,
        dividerColor: Colors.white,
        buttonColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.black,
      ),
      home: MainScreen(),
    );
  }
}
