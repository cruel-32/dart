import 'package:flutter/material.dart';
import 'package:flutters/blocprovs/example-bloc-prov.dart';
import 'package:flutters/blocs/example-bloc.dart';
import 'package:flutters/theme/style.dart';
import 'package:flutters/screens/example1/examplescreen1.dart';
import 'package:flutters/screens/example2/examplescreen2.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ExampleProvider(
      bloc: ExampleBloc(),
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => ExScreen1(),
          "/ExScreen2": (BuildContext context) => ExScreen2(),
        },
      ),
    );
  }
}