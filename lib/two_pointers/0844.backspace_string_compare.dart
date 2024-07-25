/*
  0844. Backspace String Compare

  Given two strings s and t, return true if they are equal when both are typed 
  into empty text editors. '#' means a backspace character.

  Note that after backspacing an empty text, the text will continue empty.

  Example 1:
    Input: s = "ab#c", t = "ad#c"
    Output: true
    Explanation: Both s and t become "ac".

  Example 2:
    Input: s = "ab##", t = "c#d#"
    Output: true
    Explanation: Both s and t become "".

  Example 3:
    Input: s = "a#c", t = "b"
    Output: false
    Explanation: s becomes "c" while t becomes "b".
  
  Constraints:
    1 <= s.length, t.length <= 200
    s and t only contain lowercase letters and '#' characters.
  
  Follow up: Can you solve it in O(n) time and O(1) space?
*/

// Bruteforce
class SolutionV1 {
  // Time O(n)
  // Memory O(n)
  bool backspaceCompare(String s, String t) {
    final listS = <String>[];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '#') {
        if (listS.isNotEmpty) listS.removeLast();
      } else {
        listS.add(s[i]);
      }
    }
    final listT = <String>[];
    for (int i = 0; i < t.length; i++) {
      if (t[i] == '#') {
        if (listT.isNotEmpty) listT.removeLast();
      } else {
        listT.add(t[i]);
      }
    }

    return listS.join() == listT.join();
  }
}

class SolutionV2 {
  // Time O(n)
  // Memory O(1)
  bool backspaceCompare(String s, String t) {
    int indexS = s.length - 1, indexT = t.length - 1;

    while (indexS >= 0 || indexT >= 0) {
      indexS = _nextValidChar(s, indexS);
      indexT = _nextValidChar(t, indexT);

      final charS = indexS >= 0 ? s[indexS] : '';
      final charT = indexT >= 0 ? t[indexT] : '';

      if (charS != charT) return false;
      indexS -= 1;
      indexT -= 1;
    }

    return true;
  }

  int _nextValidChar(String str, int idx) {
    int backspaces = 0;
    int index = idx;

    while (index >= 0) {
      if (backspaces == 0 && str[index] != '#') {
        break;
      } else if (str[index] == '#') {
        backspaces += 1;
      } else {
        backspaces -= 1;
      }
      index -= 1;
    }

    return index;
  }
}
