/*
  0387. First Unique Character in a String

  Given a string s, find the first non-repeating character in it and return its index. 
  If it does not exist, return -1.

  Example 1:
    Input: s = "leetcode"
    Output: 0

  Example 2:
    Input: s = "loveleetcode"
    Output: 2

  Example 3:
    Input: s = "aabb"
    Output: -1
  
  Constraints:
    1 <= s.length <= 10^5
    s consists of only lowercase English letters.
*/

class Solution {
  int firstUniqChar(String s) {
    final tmp = <String, int>{};
    for (int i = 0; i < s.length; i++) {
      tmp.update(s[i], (_) => -1, ifAbsent: () => i);
    }

    int result = -1;
    for (final idx in tmp.values) {
      if (idx >= 0) {
        if (result == -1) result = idx;
        if (idx < result) result = idx;
      }
    }

    return result;
  }
}
