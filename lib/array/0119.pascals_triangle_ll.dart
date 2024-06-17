/*
  0119. Pascal's Triangle II
  
  Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.
  In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

  Example 1:
    Input: rowIndex = 3
    Output: [1,3,3,1]

  Example 2:
    Input: rowIndex = 0
    Output: [1]

  Example 3:
    Input: rowIndex = 1
    Output: [1,1]

  Constraints:
    0 <= rowIndex <= 33
  
  Follow up: Could you optimize your algorithm to use only O(rowIndex) extra space?
*/

class Solution {
  List<int> getRow(int rowIndex) {
    if (rowIndex == 0) return [1];
    if (rowIndex == 1) return [1, 1];
    List<int> result = [1, 1];

    for (int i = 2; i <= rowIndex; i++) {
      final newResult = [1, 1];
      for (int j = 1; j < result.length; j++) {
        final sum = result[j] + result[j - 1];
        newResult.insert(newResult.length - 1, sum);
      }
      result = newResult;
    }
    
    return result;
  }
}
