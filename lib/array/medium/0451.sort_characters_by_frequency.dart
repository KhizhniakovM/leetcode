/*
  0451. Sort Characters By Frequency

  Given a string s, sort it in decreasing order based on the frequency of the characters. 
  The frequency of a character is the number of times it appears in the string.

  Return the sorted string. If there are multiple answers, return any of them.

  Example 1:
    Input: s = "tree"
    Output: "eert"
    Explanation: 'e' appears twice while 'r' and 't' both appear once.
    So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.

  Example 2:
    Input: s = "cccaaa"
    Output: "aaaccc"
    Explanation: Both 'c' and 'a' appear three times, so both "cccaaa" and "aaaccc" are valid answers.
    Note that "cacaca" is incorrect, as the same characters must be together.

  Example 3:
    Input: s = "Aabb"
    Output: "bbAa"
    Explanation: "bbaA" is also a valid answer, but "Aabb" is incorrect.
    Note that 'A' and 'a' are treated as two different characters.
  
  Constraints:
    1 <= s.length <= 5 * 10^5
    s consists of uppercase and lowercase English letters and digits.
*/

class SolutionV1 {
  /// Bruteforce
  /// Time O(n log n)
  /// Memory O(n)
  String frequencySort(String s) {
    final counter = <String, int>{};
    for (int i = 0; i < s.length; i++) {
      counter.update(s[i], (val) => val + 1, ifAbsent: () => 1);
    }

    final entries = counter.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));

    final buffer = StringBuffer();
    for (final entry in entries) {
      buffer.write(entry.key * entry.value);
    }

    return buffer.toString();
  }
}

class SolutionV2 {
  /// Bucket sort
  /// Time O(n)
  /// Memory O(n)
  String frequencySort(String s) {
    final counter = <String, int>{};
    for (int i = 0; i < s.length; i++) {
      counter.update(s[i], (val) => val + 1, ifAbsent: () => 1);
    }

    final buckets = <int, List<String>>{};
    for (final entry in counter.entries) {
      buckets.update(
        entry.value,
        (val) => [...val, entry.key],
        ifAbsent: () => [entry.key],
      );
    }

    final buffer = StringBuffer();
    for (int i = s.length; i > 0; i--) {
      final bucket = buckets[i];
      if (bucket == null) continue;
      for (final char in bucket) {
        buffer.write(char * i);
      }
    }

    return buffer.toString();
  }
}
