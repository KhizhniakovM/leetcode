/*
  0118. Pascal's Triangle

  Given an integer numRows, return the first numRows of Pascal's triangle.
  In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

  Example 1:
    Input: numRows = 5
    Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

  Example 2:
    Input: numRows = 1
    Output: [[1]]

  Constraints:
    1 <= numRows <= 30
*/

class Solution {
  List<List<int>> generate(int numRows) {
    if (numRows == 1) return [[1]];
    if (numRows == 2) return [[1], [1,1]];
    final result = [[1], [1,1]];

    for (int i = 3; i <= numRows; i++) {
      final initial = result.last;
      final newOne = <int>[];
      newOne.add(1);
      for (int j = 1; j < initial.length; j++) {
        newOne.add(initial[j] + initial[j - 1]);
      }
      newOne.add(1);
      result.add(newOne);
    } 
    return result;
  }
}
