/*
  0187. Repeated DNA Sequences

  The DNA sequence is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T'.

  For example, "ACGAATTCCG" is a DNA sequence.
  When studying DNA, it is useful to identify repeated sequences within the DNA.

  Given a string s that represents a DNA sequence, 
  return all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule. 
  You may return the answer in any order.  

  Example 1:
    Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
    Output: ["AAAAACCCCC","CCCCCAAAAA"]

  Example 2:
    Input: s = "AAAAAAAAAAAAA"
    Output: ["AAAAAAAAAA"]
  
  Constraints:
    1 <= s.length <= 10^5
    s[i] is either 'A', 'C', 'G', or 'T'.
*/

class Solution {
  List<String> findRepeatedDnaSequences(String s) {
    final tmp = <String, int>{};
    for (int i = 0; i <= s.length - 10; i++) {
      final sub = s.substring(i, i + 10);
      tmp.update(sub, (val) => val + 1, ifAbsent: () => 1);
    }

    final res = <String>[];
    for (final entry in tmp.entries) {
      if (entry.value > 1) res.add(entry.key);
    }

    return res;
  }
}
