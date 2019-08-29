import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutters/models/contact.dart';
import 'package:flutter/material.dart';

class ExampleBloc {
  StreamSubscription _audioPlayerStateSubscription;

  Stream<String> get example => _exampleSubject.stream;
  Sink<String> get exampleSink => _exampleSubject.sink;
  final StreamController<String> _exampleSubject = StreamController<String>();

  ExampleBloc();

  void dispose() {
    _exampleSubject.close();  
  }
}