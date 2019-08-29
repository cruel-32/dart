import 'package:flutter/material.dart';
import 'package:flutters/theme/style.dart';
import 'package:flutters/screens/example1/examplescreen1.dart';
import 'package:flutters/screens/example2/examplescreen2.dart';

void main(){
  runApp(NacaApp());
}

class NacaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(
      // 열(Column)은 수직 선형 레이아웃임 
      child: Column (
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text('Hello, world!', textDirection: TextDirection.ltr),
            ),
          ),
        ],
      ),
    );
  }
}

// return Scaffold(
//   bottomNavigationBar: BottomNavigationBar(
//     items: const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         title: Text('Home'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         title: Text('Home'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         title: Text('Home'),
//       ),
//     ]
//   ),
// );
// }

// import 'package:flutters/blocprovs/example-bloc-prov.dart';
// import 'package:flutters/blocs/example-bloc.dart';
// import 'package:flutters/theme/style.dart';
// import 'package:flutters/screens/example1/examplescreen1.dart';
// import 'package:flutters/screens/example2/examplescreen2.dart';


// void main() {
//   runApp(ExampleApp());
// }
// class ExampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ExampleProvider(
//       bloc: ExampleBloc(),
//       child: MaterialApp(
//         title: 'ExampleApp',
//         theme: appTheme(),
//         initialRoute: '/',
//         routes: <String, WidgetBuilder>{
//           "/": (BuildContext context) => ExScreen1(),
//           "/ExScreen2": (BuildContext context) => ExScreen2(),
//         },
//       ),
//     );
//   }
// }
