abstract interface class Stack<T> {
  void push(T val);
  T? pop();

  bool get isEmpty;
  T? get peak;
}

class StackImpl<T> implements Stack<T> {
  final _stack = <T>[];

  @override
  bool get isEmpty => _stack.isEmpty;

  @override
  T? get peak => _stack.isEmpty ? null : _stack.last;

  @override
  T? pop() => _stack.isEmpty ? null : _stack.removeLast();

  @override
  void push(T val) => _stack.add(val);
}
