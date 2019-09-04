import 'package:flutter/material.dart';

class Member {
  String name;
  DateTime birth;
  int grade;
  Member({this.name,this.birth,this.grade});
}

class MembersProv with ChangeNotifier {
  List<Member> _members = [
    Member(name:'csh',birth: DateTime.now() , grade:1),
    Member(name:'sej',birth: DateTime.now() , grade:3),
    Member(name:'bij',birth: DateTime.now() , grade:2),
  ];

  Member _member;

  getMember(){
    print('getMember');
    return _member;
  }

  setMember(Member member){
    print('setMember $member');
    _member = member;
    notifyListeners();
  }


  getMembers(){
    print('getMembers');
    return _members;
  }

  setMembers(List<Member> members){
    print('setMembers $members');
    _members = members;
    notifyListeners();
  }

}