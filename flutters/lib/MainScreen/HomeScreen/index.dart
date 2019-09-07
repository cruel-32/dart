import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:math';

// import '../bottomNavi.dart' show pages;

import '../../provider/mainProv.dart';


class HomeScreen extends StatelessWidget {
  final List<LinkItem> linkItems = <LinkItem>[
    LinkItem(title:'이벤트관리', description:'이벤트 생성,삭제,출석관리', icon:Icons.calendar_today, index:1),
    LinkItem(title:'회원관리', description:'회원 신규,수정,삭제관리', icon:Icons.people, index:2),
    LinkItem(title:'통계보기', description:'여러가지 통계 보기', icon:Icons.insert_chart, index:3),
  ];

  HomeScreen({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context){
    final mainIndex = Provider.of<MainIndex>(context);
    return Center(
      child:Container(
        width: 200,
        child:ListView.builder(
          shrinkWrap: true,
          itemCount: linkItems.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              // color: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: GestureDetector(
                onTap: () {
                  print('index: $index random: ${Random().nextInt(10)}  context: $context');
                  mainIndex.setIndex(linkItems[index].index);
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      linkItems[index].icon,
                      color: Color(0xFF707070),
                      size: 28.0,
                    ),
                    Text(
                      linkItems[index].title,
                      style: TextStyle(
                        fontSize:28.0,
                        color: Color(0xFF707070),
                      ),
                    ),
                  ],
                )
              ),
            );
          },
        ),
      )
    );
  }
}

class LinkItem {
  final String title;
  final String description;
  final IconData icon;
  final int index;

  LinkItem({this.title,this.description,this.icon, this.index});
}