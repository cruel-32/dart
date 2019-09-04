import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/membersProv.dart';

import './MemberDetail.dart';


class MemberGrid extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    final membersProv = Provider.of<MembersProv>(context);
    List<Member> members = membersProv.getMembers();
    print('MemberGrid $members');
    return ListView.builder(
      itemCount: members.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(members[index].name),
          onTap: (){
            print('hi $members[index]');
            membersProv.setMember(members[index]);
            Member member = membersProv.getMember();
            print('bye $member');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MemberDetail(member:member)),
            );
          },
        );
      },
    );
  }

}