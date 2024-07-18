/*
  1291. Sequential Digits

  An integer has sequential digits if and only if each digit in the number is one more than the previous digit.

  Return a sorted list of all the integers in the range [low, high] inclusive that have sequential digits.

  Example 1:
    Input: low = 100, high = 300
    Output: [123,234]

  Example 2:
    Input: low = 1000, high = 13000
    Output: [1234,2345,3456,4567,5678,6789,12345]
  
  Constraints:
    10 <= low <= high <= 10^9
*/

class Solution {
  List<int> sequentialDigits(int low, int high) {
    final nums = '123456789';
    final result = <int>[];

    final highSize = high.toString().length;
    for (int lowSize = low.toString().length; lowSize <= highSize; lowSize++) {
      for (int i = 0; i <= nums.length - lowSize; i++) {
        final current = int.parse(nums.substring(i, i + lowSize));
        if (current >= low && current <= high) result.add(current);
        if (current > high) return result;
      }
    }

    return result;
  }
}
