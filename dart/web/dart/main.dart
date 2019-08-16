import 'dart:html' show Element, querySelector;
import 'linkedList.dart';
import 'static.dart';

void main() {
  Point a = Point(2,2);
  Point b = Point(4,4);

  print(Point.getDistance(a, b));


  LinkedList linkedList = LinkedList();
  Element target = querySelector('#target');

  add(e){
    Element div = Element.html('<div></div>');
    linkedList.add<Element>(div);
  }

  printAll(e){
    linkedList.printAll();
  }

  toArray(e){
    List<Element> array = linkedList.toArray<Element>();

    array.forEach((item)=>{
      target.append(item..text = 'test')
    });

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