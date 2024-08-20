/*
  0930. Binary Subarrays With Sum

  Given a binary array nums and an integer goal, return the number of non-empty subarrays with a sum goal.
  A subarray is a contiguous part of the array.

  Example 1:
    Input: nums = [1,0,1,0,1], goal = 2
    Output: 4
    Explanation: The 4 subarrays are bolded and underlined below:
    [1,0,1,0,1]
    [1,0,1,0,1]
    [1,0,1,0,1]
    [1,0,1,0,1]

  Example 2:
    Input: nums = [0,0,0,0,0], goal = 0
    Output: 15
  
  Constraints:
    1 <= nums.length <= 3 * 10^4
    nums[i] is either 0 or 1.
    0 <= goal <= nums.length
*/

class SolutionV1 {
  /// Bruteforce
  /// Time O(n^2)
  /// Memory O(1)
  int numSubarraysWithSum(List<int> nums, int goal) {
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      int cur = 0;
      for (int j = i; j < nums.length; j++) {
        cur += nums[j];
        if (cur == goal) result += 1;
        if (cur > goal) break;
      }
    }

    return result;
  }
}

class SolutionV2 {
  int numSubarraysWithSum(List<int> nums, int goal) {
    int helper(int x) {
      if (x < 0) return 0;
      int res = 0, l = 0, cur = 0;
      for (int r = 0; r < nums.length; r++) {
        cur += nums[r];
        while (cur > x) {
          cur -= nums[l];
          l += 1;
        }
        res += r - l + 1;
      }
      return res;
    }

    return helper(goal) - helper(goal - 1);
  }
}
