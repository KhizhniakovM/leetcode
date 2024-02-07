/*
  0014. Longest Common Prefix

  Write a function to find the longest common prefix string amongst an array of strings.

  If there is no common prefix, return an empty string "".

  Example 1:
    Input: strs = ["flower","flow","flight"]
    Output: "fl"

  Example 2:
    Input: strs = ["dog","racecar","car"]
    Output: ""
    Explanation: There is no common prefix among the input strings.
  
  Constraints:
    1 <= strs.length <= 200
    0 <= strs[i].length <= 200
    strs[i] consists of only lowercase English letters.

*/

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
    String result = '';
    for (int i = 0; i <= 200; i++) {
      if (strs.first.length - 1 < i) return result;
      final letter = strs.first[i];
      for (int j = 1; j < strs.length; j++) {
        if (strs[j].length - 1 < i) return result;
        if (strs[j][i] != letter) return result;
      }
      result += letter;
    }
    return result;
  }
}
