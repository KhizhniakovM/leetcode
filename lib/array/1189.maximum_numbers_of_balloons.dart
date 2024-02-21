/*
  1189. Maximum Number of Balloons
   
  Given a string text, you want to use the characters of text to form as many 
  instances of the word "balloon" as possible.

  You can use each character in text at most once. 
  Return the maximum number of instances that can be formed.

  Example 1:
    Input: text = "nlaebolko"
    Output: 1

  Example 2:
    Input: text = "loonbalxballpoon"
    Output: 2

  Example 3:
    Input: text = "leetcode"
    Output: 0

  Constraints:
    1 <= text.length <= 104
    text consists of lower case English letters only.
*/

class Solution {
  int maxNumberOfBalloons(String text) {
    final charFreq = <String, int>{};
    final balloon = 'balloon';
    for (int i = 0; i < text.length; i++) {
      if (charFreq.containsKey(text[i])) {
        charFreq[text[i]] = charFreq[text[i]]! + 1;
      } else {
        charFreq[text[i]] = 1;
      }
    }
    int result = 0;
    while (charFreq.isNotEmpty) {
      for (int i = 0; i < balloon.length; i++) {
        if (charFreq.containsKey(balloon[i])) {
          charFreq[balloon[i]] = charFreq[balloon[i]]! - 1;
          if (charFreq[balloon[i]] == 0) {
            charFreq.remove(balloon[i]);
          }
        } else {
          return result;
        }
      }
      result += 1;
    }
    return result;
  }
}
