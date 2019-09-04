import 'package:flutter/material.dart';

// class EventsScreen extends StatelessWidget {
//   const EventsScreen({Key key}) : super(key: key);

//    @override
//     Widget build(BuildContext context){
//       return Scaffold(
//         body: Center(
//           child: Text('Events'),
//         ),
//       );
//     }
// }


class EventsScreen extends StatefulWidget {
  const EventsScreen({Key key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState(key);

}

class _EventsScreenState extends State<EventsScreen>{
  Key key;

  _EventsScreenState(this.key);

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Events $key')
      )
    );
  }

}