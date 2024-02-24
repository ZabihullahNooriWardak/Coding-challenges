// add a method insert() to the linked list that adds a node to the specified index.

class LinkedList {
  constructor (value) {
    this.head = {
      value: value,
      next: null
    };
    this.tail = this.head;
    this.length = 1;
  }
  append(value) {
    const newNode = {
      value: value,
      next: null
    }
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
    return this;
  }
  prepend(value) {
    const newNode = {
      value: value,
      next: null

    }
    newNode.next = this.head;
    this.head = newNode;
    this.length++;
    return this;
  }
  printList() {
    const array = [];
    let currentNode = this.head;
    while (currentNode !== null) {
      array.push(currentNode.value)
      currentNode = currentNode.next
    }
    return array;
  }
  insert(index, value) {
    if (index >= this.length) {
      return this.append(value)
    }
    let newNode = {
      value: value,
      next: null
    }
    if (index === 0) {
      return this.prepend(value)
    } else {
      let current = this.head;
      let i = 0;
      while (i < (index - 1)) {
        current = current.next
        i++
      }
      newNode.next = current.next;
      current.next = newNode;
    }
    this.length++;
    return this.printList();
  }

  remove(index) {
    if (index >= this.length || index < 0) {
      throw new Error("index out of bund")
    }
    
    let current = this.head;
    let counter = 0;
   
    while (counter < index-1) {
      current = current.next;
      counter++;
    }
    let beforTheTarget = current;
    let target = current.next
    let afterTheTarget = target.next
    beforTheTarget.next = afterTheTarget;
    this.length--;
  }
}

let myLinkedList = new LinkedList(10);
myLinkedList.prepend(5)
myLinkedList.append(20);
myLinkedList.append(30)
myLinkedList.append(40)
myLinkedList.insert(5,50)
myLinkedList.remove(3)
myLinkedList.remove(2)
myLinkedList.remove(3)

console.log(myLinkedList.printList());


