// Node class
class Node {
  int data;
  Node? next;

  Node(this.data);
}

// Linked List class
class LinkedList {
  Node? head;

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
      stdout.write('${current.data} → ');
      current = current.next;
    }
    print('null');
  }
}

import 'dart:io';

void main() {
  LinkedList list = LinkedList();
  list.append(10);
  list.append(20);
  list.append(30);
  list.printList(); // Output: 10 → 20 → 30 → null
}
