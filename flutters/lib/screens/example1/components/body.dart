import 'package:flutter/material.dart';
import 'package:flutters/screens/example2/examplescreen2.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
          RaisedButton(
            onPressed: () {
              print('hi');
              Navigator.of(context).push(_createRoute());

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ExScreen2(),
              //   ),
              // );
            },
            child: Text('hi'),
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ExScreen2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}