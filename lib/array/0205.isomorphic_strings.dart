/*
  0205. Isomorphic Strings

  Given two strings s and t, determine if they are isomorphic.
  Two strings s and t are isomorphic if the characters in s can be replaced to get t.
  All occurrences of a character must be replaced with another character 
  while preserving the order of characters. No two characters may map to the 
  same character, but a character may map to itself.

  Example 1:
    Input: s = "egg", t = "add"
    Output: true

  Example 2:
    Input: s = "foo", t = "bar"
    Output: false

  Example 3:
    Input: s = "paper", t = "title"
    Output: true
  
  Constraints:
    1 <= s.length <= 5 * 10^4
    t.length == s.length
    s and t consist of any valid ascii character. 
*/

class SolutionV1 {
  bool isIsomorphic(String s, String t) {
    final tmp = <String, String>{};
    String tmpT = '';
    for (int i = 0; i < s.length; i++) {
      if (tmp.containsKey(s[i])) {
        tmpT += tmp[s[i]]!;
      } else {
        if (tmp.containsValue(t[i])) return false;
        tmpT += t[i];
        tmp[s[i]] = t[i];
      }
    }
    return tmpT == t;
  }
}

class SolutionV2 {
  bool isIsomorphic(String s, String t) {
    final mapS = <String, String>{};
    final mapT = <String, String>{};

    for (int i = 0; i < s.length; i++) {
      final letterS = s[i];
      final letterT = t[i];

      if ((mapS.containsKey(letterS) && mapS[letterS] != letterT) ||
          (mapT.containsKey(letterT) && mapT[letterT] != letterS)) {
        return false;
      }

      mapS[letterS] = letterT;
      mapT[letterT] = letterS;
    }
    
    return true;
  }
}
