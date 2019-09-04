import 'package:flutter/material.dart';

import '../../provider/membersProv.dart';

class MemberDetail extends StatelessWidget {
  final Member member;
  MemberDetail({@required this.member});

  @override
  Widget build (BuildContext context){
    print("MemberDetail member $member");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("""
            name : ${member.name}
            birth : ${member.birth}
            grade : ${member.grade}
          """)
        ),
      )
    );
  }
}
