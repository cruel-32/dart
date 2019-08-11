import 'dart:html';

import 'linkedList.dart';

void main() {
  LinkedList linkedList = LinkedList();

  add(e){
    linkedList.add(e.target);
  }

  printAll(e){
    linkedList.printAll();
  }

  toArray(e){
    print(linkedList.toArray());
  }

  querySelector('#add')
    ..text = 'Add'
    ..onClick.listen(add);


  querySelector('#print')
    ..text = 'Print'
    ..onClick.listen(printAll);

  querySelector('#toArray')
    ..text = 'toArray'
    ..onClick.listen(toArray);

  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
  
}