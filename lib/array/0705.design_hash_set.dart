/*
  0705. Design HashSet

  Design a HashSet without using any built-in hash table libraries.

  Implement MyHashSet class:
  - void add(key) Inserts the value key into the HashSet.
  - bool contains(key) Returns whether the value key exists in the HashSet or not.
  - void remove(key) Removes the value key in the HashSet. If key does not exist in the HashSet, do nothing.
  
  Example 1:
    Input
    ["MyHashSet", "add", "add", "contains", "contains", "add", "contains", "remove", "contains"]
    [[], [1], [2], [1], [3], [2], [2], [2], [2]]
    Output
    [null, null, null, true, false, null, true, null, false]

  Explanation
    MyHashSet myHashSet = new MyHashSet();
    myHashSet.add(1);      // set = [1]
    myHashSet.add(2);      // set = [1, 2]
    myHashSet.contains(1); // return True
    myHashSet.contains(3); // return False, (not found)
    myHashSet.add(2);      // set = [1, 2]
    myHashSet.contains(2); // return True
    myHashSet.remove(2);   // set = [1]
    myHashSet.contains(2); // return False, (already removed)
*/

class MyHashSet {
  final _list = List.filled(10000, LinkedNode(key: 0));

  void add(int key) {
    final idx = _hash(key);
    LinkedNode? cur = _list[idx];

    while (cur?.next != null) {
      if (cur?.next?.key == key) return;
      cur = cur?.next;
    }

    cur?.next = LinkedNode(key: key);
  }

  void remove(int key) {
    final idx = _hash(key);
    LinkedNode? cur = _list[idx];

    while (cur?.next != null) {
      if (cur?.next?.key == key) {
        cur?.next = cur.next?.next;
        return;
      }
      cur = cur?.next;
    }
  }

  bool contains(int key) {
    final idx = _hash(key);
    LinkedNode? cur = _list[idx];

    while (cur?.next != null) {
      if (cur?.next?.key == key) return true;
      cur = cur?.next;
    }
    return false;
  }

  int _hash(int key) => key % _list.length;
}

class LinkedNode {
  final int key;
  LinkedNode? next;

  LinkedNode({
    required this.key,
    this.next,
  });
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */