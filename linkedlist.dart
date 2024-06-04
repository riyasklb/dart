class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, [this.next = null]);
}

class LinkedList<T> {
  Node<T>? head;

  void append(T data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  void prepend(T data) {
    head = Node(data, head);
  }

  void delete(T data) {
    if (head == null) return;

    if (head!.data == data) {
      head = head!.next;
      return;
    }

    Node<T> current = head!;
    while (current.next != null) {
      if (current.next!.data == data) {
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }

  bool contains(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList<int> list = LinkedList<int>();

  list.append(1);
  list.append(2);
  list.append(3);

  list.printList();
  print('new head');
  list.prepend(0);

  list.printList();
  print('delete');
  list.delete(3);

  list.printList();

  print(list.contains(3)); // true
  print(list.contains(2)); // false
}
