/*
  2002. Maximum Product of the Length of Two Palindromic Subsequences

  Given a string s, find two disjoint palindromic subsequences of s such that 
  the product of their lengths is maximized. 

  Return the maximum possible product of the lengths of the two palindromic subsequences.

  The two subsequences are disjoint if they do not both pick a character at the same index.
  A subsequence is a string that can be derived from another string by deleting 
  some or no characters without changing the order of the remaining characters. 
  A string is palindromic if it reads the same forward and backward.

  Example 1:
    Input: s = "leetcodecom"
    Output: 9
    Explanation: An optimal solution is to choose "ete" for the 1st subsequence and "cdc" 
    for the 2nd subsequence.
    The product of their lengths is: 3 * 3 = 9.

  Example 2:
    Input: s = "bb"
    Output: 1
    Explanation: An optimal solution is to choose "b" (the first character) for the 1st subsequence 
    and "b" (the second character) for the 2nd subsequence.
    The product of their lengths is: 1 * 1 = 1.

  Example 3:
    Input: s = "accbcaxxcxx"
    Output: 25
    Explanation: An optimal solution is to choose "accca" for the 1st subsequence 
    and "xxcxx" for the 2nd subsequence.
    The product of their lengths is: 5 * 5 = 25.
  
  Constraints:
    2 <= s.length <= 12
    s consists of lowercase English letters only.
*/

import 'dart:math';

class Solution {
  int maxProduct(String s) {
    final length = s.length;
    final pali = <int, int>{};
    int res = 0;

    for (int i = 1; i < 1 << length; i++) {
      final binary = i.toRadixString(2).padLeft(length, '0');
      String subseq = '';
      for (int j = 0; j < length; j++) {
        if (binary[j] == '1') subseq = '$subseq${s[j]}';
      }
      if (isPalindrome(subseq)) pali[i] = subseq.length;
    }

    for (final m1 in pali.entries) {
      for (final m2 in pali.entries) {
        if (m1.key & m2.key == 0) res = max(res, m1.value * m2.value);
      }
    }

    return res;
  }

  bool isPalindrome(String s) {
    for (int i = 0; i < s.length; i++) {
      if (s[i] != s[s.length - 1 - i]) return false;
    }
    return true;
  }
}
