
class LinkedList {
  Node head = Node<Null>();
  int size = 0;

  void add<T>(data){
    Node newNode = Node<T>();
    var node = getTail(this.head);

    newNode.data = data;
    newNode.prev = node;
    node.next = newNode;
    print('added : ${data}');
    this.size++;
    print('this.size : ${this.size}');

  }

  Node getTail(head){
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

  List toArray<T>(){
    List<T> list = [];
    var nowNode = this.head;

    while(nowNode.next != null){
      nowNode = nowNode.next;
      list.add(nowNode.data);
    }
    print('toArray ${list}');
    return list;
  }

}

class Node<T> {
  Node prev;
  Node next;
  T data;
}