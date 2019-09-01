import 'package:flutter/material.dart';
import 'HomeScreen/index.dart';
import 'EventsScreen/index.dart';
import 'MembersScreen/index.dart';
import 'DashboardScreen/index.dart';

class BottomNaviController extends StatefulWidget {
  @override
  _BottomNaviControllerState createState()=>_BottomNaviControllerState();
}

class _BottomNaviControllerState extends State<BottomNaviController> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomeScreen(
      key: PageStorageKey('Home'),
    ),
    EventsScreen(
      key: PageStorageKey('Events'),
    ),
    MembersScreen(
      key: PageStorageKey('Members'),
    ),
    DashboardScreen(
      key: PageStorageKey('Dashboard'),
    ),
  ];

  PageStorageBucket bucket = PageStorageBucket();

  void setIndex(int index){
    setState(()=> _selectedIndex = index);
  }

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    onTap: (int index)=> setIndex(index),
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
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
    );
  }
}