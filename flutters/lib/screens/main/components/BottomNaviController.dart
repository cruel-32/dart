import 'package:flutter/material.dart';
import '../FirstPage.dart';
import '../SecondPage.dart';
import '../ThirdPage.dart';
import '../FourthPage.dart';

class BottomNaviController extends StatefulWidget {
  @override
  _BottomNaviControllerState createState()=>_BottomNaviControllerState();

}

class _BottomNaviControllerState extends State<BottomNaviController> {
  final List<Widget> pages = [
    FirstPage(
      key: PageStorageKey('Page1'),
    ),
    SecondPage(
      key: PageStorageKey('Page2'),
    ),
    ThirdPage(
      key: PageStorageKey('Page3'),
    ),
    FourthPage(
      key: PageStorageKey('Page4'),
    ),
  ];

  PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;


  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    onTap: (int index)=> setState(()=> _selectedIndex = index),
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        title: Text('Events'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        title: Text('Members'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.insert_chart),
        title: Text('Dashboard'),
      ),
    ]
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
      bottomNavigationBar: new Container(
        color: Colors.green,
        child : _bottomNavigationBar(_selectedIndex),
      ),
    );
  }

}