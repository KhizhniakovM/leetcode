/*
  242. Valid Anagram

  Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  An Anagram is a word or phrase formed by rearranging the letters of a different 
  word or phrase, typically using all the original letters exactly once.

  Example 1:
    Input: s = "anagram", t = "nagaram"
    Output: true

  Example 2:
    Input: s = "rat", t = "car"
    Output: false
  
  Constraints:
    1 <= s.length, t.length <= 5 * 104
    s and t consist of lowercase English letters.

  Follow up: 
    What if the inputs contain Unicode characters? 
    How would you adapt your solution to such a case?
*/

class Solution {
  bool isAnagram(String s, String t) {
    final letterFrequency = <String, int>{};

    for (int i = 0; i < s.length; i++) {
      if (letterFrequency[s[i]] != null) {
        final count = letterFrequency[s[i]];
        letterFrequency[s[i]] = count! + 1;
      } else {
        letterFrequency[s[i]] = 1;
      }
    }

    for (int i = 0; i < t.length; i++) {
      if (letterFrequency[t[i]] != null) {
        final count = letterFrequency[t[i]];
        letterFrequency[t[i]] = count! - 1;

        if (letterFrequency[t[i]] == 0) {
          letterFrequency.remove(t[i]);
        }
      } else {
        return false;
      }
    }

    return letterFrequency.isEmpty;
  }
}
