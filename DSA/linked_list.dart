class Node {
  int? value;
  Node? next;

  Node(int value) {
    this.value = value;
  }
}

Node? head;

void add(int value) {
  Node newNode = Node(value);
  Node? currNode = head;
  if (isEmpty()) {
    head = newNode;
  } else {
    while (currNode!.next != null) {
      currNode = currNode.next;
    }
    currNode.next = newNode;
  }
}

void removeLast() {
  Node? currNode = head;
  if (isEmpty()) {
    return;
  } else if (head!.next == null) {
    head = null;
    return;
  } else {
    while (currNode!.next!.next != null) {
      currNode = currNode.next;
    }
    currNode.next = null;
  }
}

void removeFirst(){
  if (isEmpty()) {
    return;
  } else if (head!.next == null) {
    head = null;
    return;
  }else{
    head = head!.next;
  }
}

void printList() {
  Node? currNode = head;
  if (isEmpty()) {
    print("List is empty");
  } else {
    while (currNode != null) {
      print(currNode.value);
      currNode = currNode.next;
    }
  }
}

bool isEmpty() {
  if (head == null) {
    return true;
  }
  return false;
}

void main() {
  add(5);
  add(10);
  add(15);
  add(20);
  add(25);
  add(30);
  removeFirst();
  printList();
}
