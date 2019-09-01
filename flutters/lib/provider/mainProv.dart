import 'package:flutter/material.dart';

class MainIndex with ChangeNotifier {
  int _index = 0;

  MainIndex(this._index);

  getIndex(){
    print('getIndex');
    return _index;
  }

  setIndex(int index){
    print('setIndex $index');
    _index = index;
    notifyListeners();
  }

  void increment() {
    _index++;
    notifyListeners();
  }

  void decrement() {
    _index--;
    notifyListeners();
  }
}