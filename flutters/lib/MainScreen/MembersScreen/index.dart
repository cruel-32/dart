import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/membersProv.dart';
import './MemberGrid.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      print('MembersScreen');
      return Scaffold(
        body:ChangeNotifierProvider(
          builder:(_) => MembersProv(),
          child: MemberGrid()
        )
      );
    }
}