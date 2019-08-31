import 'package:flutter/material.dart';
import 'components/BottomNaviController.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNaviController()
    );
  }
}