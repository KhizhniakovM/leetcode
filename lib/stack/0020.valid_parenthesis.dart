/*
  0020. Valid Parentheses

  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
  determine if the input string is valid.

  An input string is valid if:
    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
    Every close bracket has a corresponding open bracket of the same type.
  
  Example 1:
    Input: s = "()"
    Output: true

  Example 2:
    Input: s = "()[]{}"
    Output: true

  Example 3:
    Input: s = "(]"
    Output: false
  
  Constraints:
    1 <= s.length <= 10^4
    s consists of parentheses only '()[]{}'.
*/

class Solution {
  /// Time O(n)
  /// Memory O(1)
  bool isValid(String s) {
    final stack = List<String>.empty(growable: true);
    final map = {')': '(', ']': '[', '}': '{'};

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
        stack.add(s[i]);
      } else {
        if (stack.isEmpty) return false;
        if (stack.last == map[s[i]]) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
