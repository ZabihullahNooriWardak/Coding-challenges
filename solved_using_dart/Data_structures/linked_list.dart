// Node class

void main() {
  int x = 3;
  int y = x;
  x = 8;
  print('tis is y vluae : $y');
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

// Linked List class
class LinkedList {
  Node? head;
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
