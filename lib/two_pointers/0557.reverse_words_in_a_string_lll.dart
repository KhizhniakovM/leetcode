/*
  0557. Reverse Words in a String III

  Given a string s, reverse the order of characters in each word within a sentence while still 
  preserving whitespace and initial word order.

  Example 1:
    Input: s = "Let's take LeetCode contest"
    Output: "s'teL ekat edoCteeL tsetnoc"

  Example 2:
    Input: s = "Mr Ding"
    Output: "rM gniD"

  Constraints:
    1 <= s.length <= 5 * 10^4
    s contains printable ASCII characters.
    s does not contain any leading or trailing spaces.
    There is at least one word in s.
    All the words in s are separated by a single space.
*/

class SolutionV1 {
  /// Time O(n)
  /// Memory O(n)
  /// With buffers
  String reverseWords(String s) {
    final buffer = StringBuffer();
    for (final word in s.split(' ')) {
      buffer.write(_reverseWord(word));
      buffer.write(' ');
    }
    return buffer.toString().trimRight();
  }

  String _reverseWord(String s) {
    final buffer = StringBuffer();
    for (int i = s.length - 1; i >= 0; i--) {
      buffer.write(s[i]);
    }
    return buffer.toString();
  }
}

class SolutionV2 {
  /// Time O(n)
  /// Memory O(n)
  /// Global pointers
  String reverseWords(String s) {
    final list = s.split('');

    int left = 0;
    for (int right = 0; right < list.length; right++) {
      if (s[right] == ' ' || right == list.length - 1) {
        int tempLeft = left, tempRight = right - 1;
        if (right == list.length - 1) tempRight += 1;

        while (tempLeft < tempRight) {
          final tmp = list[tempLeft];
          list[tempLeft] = s[tempRight];
          list[tempRight] = tmp;

          tempLeft += 1;
          tempRight -= 1;
        }
        left = right + 1;
      }
    }

    return list.join();
  }
}
