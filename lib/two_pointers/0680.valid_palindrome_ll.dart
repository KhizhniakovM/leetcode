/*
  0680. Valid Palindrome II

  Given a string s, return true if the s can be palindrome after deleting at most one character from it.

  Example 1:
    Input: s = "aba"
    Output: true

  Example 2:
    Input: s = "abca"
    Output: true
    Explanation: You could delete the character 'c'.

  Example 3:
    Input: s = "abc"
    Output: false
  
  Constraints:
    1 <= s.length <= 10^5
    s consists of lowercase English letters.
*/

class Solution {
  bool validPalindrome(String s) {
    int left = 0, right = s.length - 1;

    while (left < right) {
      if (s[left] != s[right]) {
        final remL = s.substring(left + 1, right + 1);
        final remR = s.substring(left, right);

        return (remL == remL.split('').reversed.join() ||
            remR == remR.split('').reversed.join());
      }

      left++;
      right--;
    }
    return true;
  }
}
