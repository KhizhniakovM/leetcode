/*
  0036. Valid Sudoku

  Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated 
  according to the following rules:
    Each row must contain the digits 1-9 without repetition.
    Each column must contain the digits 1-9 without repetition.
    Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.

  Note:
    A Sudoku board (partially filled) could be valid but is not necessarily solvable.
    Only the filled cells need to be validated according to the mentioned rules.

  Example 1:
    Input: board = 
    [["5","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]]
    Output: true
  
  Example 2:
    Input: board = 
    [["8","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]]
    Output: false
    Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. 
    Since there are two 8's in the top left 3x3 sub-box, it is invalid.
*/

class Solution {
  bool isValidSudoku(List<List<String>> board) {
    final rows = List<Set<String>>.generate(9, (_) => {});
    final columns = List<Set<String>>.generate(9, (_) => {});
    final squares = List<Set<String>>.generate(9, (_) => {});

    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {
        final number = board[r][c];
        if (number == '.') continue;
        
        final boxId = (r ~/ 3) * 3 + (c ~/ 3);
        if (rows[r].contains(number) ||
            columns[c].contains(number) ||
            squares[boxId].contains(number)) {
          return false;
        }
        rows[r].add(number);
        columns[c].add(number);
        squares[boxId].add(number);
      }
    }
    return true;
  }
}
