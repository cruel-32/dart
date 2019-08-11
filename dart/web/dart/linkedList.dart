import 'dart:js';

class LinkedList {
  Node head = Node();
  int size = 0;

  void add(data){
    Node newNode = Node();
    var node = getTail(this.head);

    newNode.data = data;
    newNode.prev = node;
    node.next = newNode;
    print('added : ${data}');
    this.size++;
  }

  Node getTail(head){
    print('head : ${head}');
    while(head.next != null){
      head = head.next;
    }
    return head;
  }

  void printAll(){
    var nowNode = this.head;
    while(nowNode.next != null){
      nowNode = nowNode.next;
      print('print : ${nowNode.data}');
    }
  }

  JsArray toArray(){
    List<dynamic> list = [];
    var nowNode = this.head;

    while(nowNode.next != null){
      nowNode = nowNode.next;
      list.add(nowNode.data);
    }

    return list;
  }

}

class Node {
  Node prev;
  Node next;
  var data;
}