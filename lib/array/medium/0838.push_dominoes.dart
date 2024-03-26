/*
  0838. Push Dominoes

  There are n dominoes in a line, and we place each domino vertically upright. 
  In the beginning, we simultaneously push some of the dominoes either to the left or to the right.

  After each second, each domino that is falling to the left pushes the adjacent domino on the left. 
  Similarly, the dominoes falling to the right push their adjacent dominoes standing on the right.

  When a vertical domino has dominoes falling on it from both sides, 
  it stays still due to the balance of the forces.

  For the purposes of this question, we will consider that a falling domino expends no 
  additional force to a falling or already fallen domino.

  You are given a string dominoes representing the initial state where:

  - dominoes[i] = 'L', if the ith domino has been pushed to the left,
  - dominoes[i] = 'R', if the ith domino has been pushed to the right, and
  - dominoes[i] = '.', if the ith domino has not been pushed.
  Return a string representing the final state.

  Example 1:
    Input: dominoes = "RR.L"
    Output: "RR.L"
    Explanation: The first domino expends no additional force on the second domino.

  Example 2:
    Input: dominoes = ".L.R...LR..L.."
    Output: "LL.RR.LLRRLL.."
  
  Constraints:
    n == dominoes.length
    1 <= n <= 10^5
    dominoes[i] is either 'L', 'R', or '.'.
*/

/// Bruteforce
class Solution {
  String pushDominoes(String dominoes) {
    final dom = dominoes.split('');
    bool isActive = true;

    while (isActive) {
      isActive = false;
      for (int i = 0; i < dom.length; i++) {
        final d = dom[i];

        if (d == 'R') {
          if (i < dom.length - 1) {
            final next = dom[i + 1];
            if (next == '.') {
              if (i < dom.length - 2) {
                if (dom[i + 2] != 'L') {
                  dom[i + 1] = 'r';
                  isActive = true;
                }
              } else {
                dom[i + 1] = 'r';
                isActive = true;
              }
            }
          }
        } else if (d == 'L') {
          if (i > 0) {
            final prev = dom[i - 1];
            if (prev == '.') {
              if (i > 1) {
                if (dom[i - 2] != 'R') {
                  dom[i - 1] = 'l';
                  isActive = true;
                }
              } else {
                dom[i - 1] = 'l';
                isActive = true;
              }
            }
          }
        }
      }
      for (int i = 0; i < dom.length; i++) {
        if (dom[i] == 'l') dom[i] = 'L';
        if (dom[i] == 'r') dom[i] = 'R';
      }
    }

    return dom.join();
  }
}
