/*
  0438. Find All Anagrams in a String

  Given two strings s and p, return an array of all the start indices of p's anagrams in s. 
  You may return the answer in any order.

  An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
  typically using all the original letters exactly once.

  Example 1:
    Input: s = "cbaebabacd", p = "abc"
    Output: [0,6]
    Explanation:
    The substring with start index = 0 is "cba", which is an anagram of "abc".
    The substring with start index = 6 is "bac", which is an anagram of "abc".

  Example 2:
    Input: s = "abab", p = "ab"
    Output: [0,1,2]
    Explanation:
    The substring with start index = 0 is "ab", which is an anagram of "ab".
    The substring with start index = 1 is "ba", which is an anagram of "ab".
    The substring with start index = 2 is "ab", which is an anagram of "ab".
  
  Constraints:
    1 <= s.length, p.length <= 3 * 10^4
    s and p consist of lowercase English letters.
*/

class Solution {
  List<int> findAnagrams(String s, String p) {
    final res = <int>[];
    final freq = <String, int>{};
    for (final l in p.split('')) {
      freq.update(l, (val) => val + 1, ifAbsent: () => 1);
    }

    int start = 0, matched = 0;
    for (int end = 0; end < s.length; end++) {
      final right = s[end];

      if (freq.containsKey(right)) {
        freq.update(right, (val) => val - 1);
        if (freq[right] == 0) matched++;
      }

      if (matched == freq.length) res.add(start);

      if (end >= p.length - 1) {
        final left = s[start];
        start++;

        if (freq.containsKey(left)) {
          if (freq[left] == 0) matched--;
          freq.update(left, (val) => val + 1);
        }
      }
    }

    return res;
  }
}

// Time limit exceeded

// List<int> findAnagrams(String s, String p) {
//   bool isAnagram(String s1, String s2) {
//     final freq = <String, int>{};
//     for (final l in s1.split('')) {
//       freq.update(l, (val) => val + 1, ifAbsent: () => 1);
//     }

//     for (final l in s2.split('')) {
//       final n = freq[l];
//       if (n == null || n <= 0) return false;
//       freq[l] = n - 1;
//       if (freq[l] == 0) freq.remove(l);
//     }

//     return true;
//   }

//   final res = <int>[];
//   for (int i = 0; i < s.length; i++) {
//     final end = (p.length) + i;
//     if (end > s.length) return res;
//     final sub = s.substring(i, end);

//     if (isAnagram(p, sub)) res.add(i);
//   }

//   return res;
// }
