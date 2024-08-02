/*
  0567. Permutation in String

  Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.
  In other words, return true if one of s1's permutations is the substring of s2.

  Example 1:
    Input: s1 = "ab", s2 = "eidbaooo"
    Output: true
    Explanation: s2 contains one permutation of s1 ("ba").

  Example 2:
    Input: s1 = "ab", s2 = "eidboaoo"
    Output: false

  Constraints:
    1 <= s1.length, s2.length <= 10^4
    s1 and s2 consist of lowercase English letters.
*/

class SolutionV1 {
  /// Bruteforce
  /// Time O(n * m)
  /// Memory O(n + m)
  /// Hard to compare string on every loop
  bool checkInclusion(String s1, String s2) {
    final s1counter = <String, int>{};
    for (final char in s1.split('')) {
      s1counter.update(char, (val) => val + 1, ifAbsent: () => 1);
    }

    int l = 0;
    final m2counter = <String, int>{};
    for (int r = 0; r < s2.length; r++) {
      m2counter.update(s2[r], (val) => val + 1, ifAbsent: () => 1);
      if (s1.length == r - l + 1) {
        if (_isSame(s1counter, m2counter)) return true;
        m2counter.update(s2[l], (val) => val - 1);
        if (m2counter[s2[l]] == 0) m2counter.remove(s2[l]);
        l++;
      }
    }

    return false;
  }

  bool _isSame(Map<String, int> m1, Map<String, int> m2) {
    if (m1.length != m2.length) return false;
    for (final entry in m1.entries) {
      if (!m2.containsKey(entry.key)) return false;
      if (m2[entry.key] != entry.value) return false;
    }
    return true;
  }
}

class SolutionV2 {
  /// Time O(n)
  /// Memory O(n + m)
  /// Add counter of matching symbols
  bool checkInclusion(String s1, String s2) {
    final counter = <String, int>{};
    for (final char in s1.split('')) {
      counter.update(char, (val) => val + 1, ifAbsent: () => 1);
    }

    int windowStart = 0, match = 0;
    for (int windowEnd = 0; windowEnd < s2.length; windowEnd++) {
      if (counter.containsKey(s2[windowEnd])) {
        counter.update(s2[windowEnd], (val) => val - 1);
        if (counter[s2[windowEnd]] == 0) match += 1;
      }

      if (match == counter.length) return true;

      if (windowEnd >= s1.length - 1) {
        if (counter.containsKey(s2[windowStart])) {
          if (counter[s2[windowStart]] == 0) match -= 1;
          counter.update(s2[windowStart], (val) => val + 1);
        }
        windowStart += 1;
      }
    }

    return false;
  }
}
