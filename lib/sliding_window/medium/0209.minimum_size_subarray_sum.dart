/*
  0209. Minimum Size Subarray Sum

  Given an array of positive integers nums and a positive integer target, return the minimal length of a 
  subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

  Example 1:
    Input: target = 7, nums = [2,3,1,2,4,3]
    Output: 2
    Explanation: The subarray [4,3] has the minimal length under the problem constraint.

  Example 2:
    Input: target = 4, nums = [1,4,4]
    Output: 1

  Example 3:
    Input: target = 11, nums = [1,1,1,1,1,1,1,1]
    Output: 0
  
  Constraints:
    1 <= target <= 10^9
    1 <= nums.length <= 10^5
    1 <= nums[i] <= 10^4
  
  Follow up: If you have figured out the O(n) solution, 
  try coding another solution of which the time complexity is O(n log(n)).
*/

import 'dart:math' as math;

class Solution {
  /// Time O(n)
  /// Memory O(1)
  int minSubArrayLen(int target, List<int> nums) {
    int l = 0, min = nums.length + 1, cur = 0;
    for (int r = 0; r < nums.length; r++) {
      cur += nums[r];
      while (cur >= target) {
        min = math.min(r - l + 1, min);
        cur -= nums[l];
        l += 1;
      }
    }

    return min == nums.length + 1 ? 0 : min;
  }
}