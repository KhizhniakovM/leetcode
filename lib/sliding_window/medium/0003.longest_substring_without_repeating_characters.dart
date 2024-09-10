/*
  0003. Longest Substring Without Repeating Characters

  Given a string s, find the length of the longest substring
  without repeating characters.

  Example 1:
    Input: s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.

  Example 2:
    Input: s = "bbbbb"
    Output: 1
    Explanation: The answer is "b", with the length of 1.

  Example 3:
    Input: s = "pwwkew"
    Output: 3
    Explanation: The answer is "wke", with the length of 3.
    Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
  
  Constraints:
    0 <= s.length <= 5 * 10^4
    s consists of English letters, digits, symbols and spaces.
*/

import 'dart:math';

class Solution {
  /// Time O(n)
  /// Memory O(n)
  int lengthOfLongestSubstring(String s) {
    int longestSubstring = 0, windowStart = 0;
    final charFreq = <String, int>{};

    for (int windowEnd = 0; windowEnd < s.length; windowEnd++) {
      final rightChar = s[windowEnd];
      charFreq.update(rightChar, (val) => val + 1, ifAbsent: () => 1);

      while (charFreq[rightChar]! > 1) {
        final leftChar = s[windowStart];
        charFreq.update(leftChar, (val) => val - 1);
        if (charFreq[leftChar] == 0) charFreq.remove(leftChar);
        windowStart += 1;
      }

      final windowSize = windowEnd - windowStart + 1;
      longestSubstring = max(windowSize, longestSubstring);
    }

    return longestSubstring;
  }
}
