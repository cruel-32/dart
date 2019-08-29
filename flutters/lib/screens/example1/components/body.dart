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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExScreen2()),
              );

            },
            child: Text('hi'),
          )
        ],
      ),
    );
  }
}
