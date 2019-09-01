import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HomeScreen/index.dart';
import 'EventsScreen/index.dart';
import 'MembersScreen/index.dart';
import 'DashboardScreen/index.dart';

import '../provider/mainProv.dart';

class BottomNaviController extends StatelessWidget {
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

  @override
  Widget build(BuildContext context){
    final mainIndex = Provider.of<MainIndex>(context);
    print('mainIndex.getIndex() -> ${mainIndex.getIndex()}');
    PageStorageBucket bucket = PageStorageBucket();

    return Scaffold(
      body:PageStorage(
        child: pages[mainIndex.getIndex()],
        bucket: bucket,
      ),
      // bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: (int index)=> setIndex(index),
        onTap:(int index) => mainIndex.setIndex(index),
        currentIndex: mainIndex.getIndex(),
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
      ),
    );
  }
}
