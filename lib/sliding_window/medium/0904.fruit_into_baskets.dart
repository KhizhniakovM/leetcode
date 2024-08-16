/*
  0904. Fruit Into Baskets

  You are visiting a farm that has a single row of fruit trees arranged from left to right. 
  The trees are represented by an integer array fruits where fruits[i] is the type of fruit 
  the ith tree produces.

  You want to collect as much fruit as possible. 
  However, the owner has some strict rules that you must follow:
  - You only have two baskets, and each basket can only hold a single type of fruit. 
  - There is no limit on the amount of fruit each basket can hold.
  - Starting from any tree of your choice, you must pick exactly one fruit from every tree 
    (including the start tree) while moving to the right. 
  - The picked fruits must fit in one of your baskets.
  - Once you reach a tree with fruit that cannot fit in your baskets, you must stop.
  - Given the integer array fruits, return the maximum number of fruits you can pick.

  Example 1:
    Input: fruits = [1,2,1]
    Output: 3
    Explanation: We can pick from all 3 trees.
    
  Example 2:
    Input: fruits = [0,1,2,2]
    Output: 3
    Explanation: We can pick from trees [1,2,2].
    If we had started at the first tree, we would only pick from trees [0,1].

  Example 3:
    Input: fruits = [1,2,3,2,2]
    Output: 4
    Explanation: We can pick from trees [2,3,2,2].
    If we had started at the first tree, we would only pick from trees [1,2].
  
  Constraints:
    1 <= fruits.length <= 10^5
    0 <= fruits[i] < fruits.length
*/

import 'dart:math' as math;

class Solution {
  /// Time O(n)
  /// Memeory O(n)
  int totalFruit(List<int> fruits) {
    final tmp = <int, int>{};
    int l = 0, max = 0, current = 0;
    for (int r = 0; r < fruits.length; r++) {
      tmp.update(fruits[r], (val) => val += 1, ifAbsent: () => 1);
      current += 1;
      while (tmp.length > 2) {
        tmp.update(fruits[l], (val) => val -= 1);
        if (tmp[fruits[l]] == 0) tmp.remove(fruits[l]);
        current -= 1;
        l += 1;
      }
      max = math.max(max, current);
    }
    return max;
  }
}
