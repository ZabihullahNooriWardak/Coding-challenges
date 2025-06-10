// Node class

void main() {
  for (int i = 0; i < 5; i++) {
    // print('this i is : $i');
  }
  int x = 3;
  int y = x;
  x = 8;
  print('tis is y vluae : $y');
  LinkedList lst = LinkedList();
  lst.append(2);
  lst.append(8);
  lst.prepend(77);
  lst.insert(2, 99);
  lst.printList();
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

// Linked List class
class LinkedList {
  Node? head;
// prepend node at beggining
  void prepend(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node previousHead = head!;
    head = newNode;
    head!.next = previousHead;
  }

  // Append node at the end
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  void insert(int index, int value) {
    if (value < 0) {
      return;
    }
    if (value == 0) {
      prepend(value);
      return;
    }
    Node current = head!;
    for (int i = 0; i < index - 1 && current.next != null; i++) {
      current = current.next!;
    }
    if (current == null) {
      return;
    }
    var newNode = Node(value);
    newNode.next = current.next;
    current.next = newNode;
  }

  // Print the list
  void printList() {
    Node? current = head;
    while (current != null) {
      print('${current.data} → ');
      current = current.next;
    }
    print('null');
  }
}
