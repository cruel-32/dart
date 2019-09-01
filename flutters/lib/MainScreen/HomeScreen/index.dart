import 'package:flutter/material.dart';
import 'dart:math';

// import '../bottomNavi.dart' show pages;

class HomeScreen extends StatelessWidget {
  final List<LinkItem> linkItems = <LinkItem>[
    LinkItem(title:'이벤트관리', description:'이벤트 생성,삭제,출석관리', icon:'', index:1),
    LinkItem(title:'회원관리', description:'회원 신규,수정,삭제관리', icon:'', index:2),
    LinkItem(title:'통계보기', description:'여러가지 통계 보기', icon:'', index:3),
  ];

  HomeScreen({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: linkItems.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(linkItems[index].title),
              onTap: () {
                print('index: $index random: ${Random().nextInt(10)}  context: $context');
                
              },
            );
          },
        ),
      ),
    );
  }
}

class LinkItem {
  final String title;
  final String description;
  final String icon;
  final int index;

  LinkItem({this.title,this.description,this.icon, this.index});
}