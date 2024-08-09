/*
  1074. Number of Submatrices That Sum to Target

  Given a matrix and a target, return the number of non-empty submatrices that sum to target.
  A submatrix x1, y1, x2, y2 is the set of all cells matrix[x][y] with x1 <= x <= x2 and y1 <= y <= y2.

  Two submatrices (x1, y1, x2, y2) and (x1', y1', x2', y2') are different if 
  they have some coordinate that is different: for example, if x1 != x1'.

  Example 1:
    Input: matrix = [[0,1,0],[1,1,1],[0,1,0]], target = 0
    Output: 4
    Explanation: The four 1x1 submatrices that only contain 0.

  Example 2:
    Input: matrix = [[1,-1],[-1,1]], target = 0
    Output: 5
    Explanation: The two 1x2 submatrices, plus the two 2x1 submatrices, plus the 2x2 submatrix.

  Example 3:
    Input: matrix = [[904]], target = 0
    Output: 0

  Constraints:
    1 <= matrix.length <= 100
    1 <= matrix[0].length <= 100
    -1000 <= matrix[i][j] <= 1000
    -10^8 <= target <= 10^8

  Hint 1
    Using a 2D prefix sum, we can query the sum of any submatrix in O(1) time. 
    Now for each (r1, r2), we can find the largest sum of a submatrix that uses every row 
    in [r1, r2] in linear time using a sliding window.
*/

class Solution {
  /// Bruteforce
  /// Time O(n^2 * m^2)
  /// Memory O(nm)
  int numSubmatrixSumTarget(List<List<int>> matrix, int target) {
    // Create tmp matrix with prefix sum
    final rows = matrix.length, cols = matrix[0].length;
    final tmp = List.generate(rows, (_) => List.generate(cols, (_) => 0));

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        final above = r > 0 ? tmp[r - 1][c] : 0;
        final left = c > 0 ? tmp[r][c - 1] : 0;
        final corner = c > 0 && r > 0 ? tmp[r - 1][c - 1] : 0;

        tmp[r][c] = matrix[r][c] + above + left - corner;
      }
    }

    // Count any possible submatrix
    int result = 0;
    for (int r1 = 0; r1 < rows; r1++) {
      for (int r2 = r1; r2 < rows; r2++) {
        for (int c1 = 0; c1 < cols; c1++) {
          for (int c2 = c1; c2 < cols; c2++) {
            final top = r1 > 0 ? tmp[r1 - 1][c2] : 0;
            final left = c1 > 0 ? tmp[r2][c1 - 1] : 0;
            final corner = r1 > 0 && c1 > 0 ? tmp[r1 - 1][c1 - 1] : 0;
            final subsum = tmp[r2][c2] - top - left + corner;
            if (subsum == target) result++;
          }
        }
      }
    }

    return result;
  }
}
