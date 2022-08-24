// 1446. Consecutive Characters
// The power of the string is the maximum length of a non-empty substring that
// contains only one unique character.
// Given a string s, return the power of s.

// Example 1:
// Input: s = "leetcode"
// Output: 2
// Explanation: The substring "ee" is of length 2 with the character 'e' only.

// Example 2:
// Input: s = "abbcccddddeeeeedcba"
// Output: 5
// Explanation: The substring "eeeee" is of length 5 with the character 'e' only.

// Constraints:
// 1 <= s.length <= 500
// s consists of only lowercase English letters.

import 'dart:math';

class Solution {
  int maxPower(String s) {
    var maxPower = 1;
    var currentPower = 1;

    for (var i = 1; i < s.length; i++) {
      if (s[i - 1] == s[i]) {
        currentPower += 1;
      } else {
        currentPower = 1;
      }
      maxPower = max(maxPower, currentPower);
    }
    return maxPower;
  }
}
