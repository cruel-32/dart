import 'package:flutter/material.dart';
import 'package:flutters/screens/example2/examplescreen2.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('SecondPage'),
            RaisedButton(
                child: Text('route test', style: TextStyle(fontSize: 24)),
                onPressed: (){
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => ExScreen2(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0);
                        var end = Offset.zero;
                        var tween = Tween(begin: begin, end: end);
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    )
                  );
                },
            ),
          ],
        )
      )
    );
  }
}