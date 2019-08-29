import 'dart:html';
import 'linkedList.dart';
import 'static.dart';

void main() {
  Point a = Point(2,2);
  Point b = Point(4,4);

  print(Point.getDistance(a, b));

  LinkedList linkedList = LinkedList();
  Element target = querySelector('#target');
  int number = 0;

  add(e){
    number++;
    Element div = Element.html('<div>${number}</div>');
    div.onClick.listen((e){
      div.remove();
    });
    linkedList.add<Element>(div);
  }

  printAll(e){
    linkedList.printAll();
  }

  toArray(e){
    List<Element> array = linkedList.toArray<Element>();
    print('array : ${array}');

    array.forEach((item)=>{
      target.append(item)
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