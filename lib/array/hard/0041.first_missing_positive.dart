/*
  0041. First Missing Positive

  Given an unsorted integer array nums. Return the smallest positive integer that is not present in nums.

  You must implement an algorithm that runs in O(n) time and uses O(1) auxiliary space.

  Example 1:
    Input: nums = [1,2,0]
    Output: 3
    Explanation: The numbers in the range [1,2] are all in the array.

  Example 2:
    Input: nums = [3,4,-1,1]
    Output: 2
    Explanation: 1 is in the array but 2 is missing.

  Example 3:
    Input: nums = [7,8,9,11,12]
    Output: 1
    Explanation: The smallest positive integer 1 is missing.

  Constraints:
    1 <= nums.length <= 10^5
    -2^31 <= nums[i] <= 2^31 - 1
*/

class Solution {
  int firstMissingPositive(List<int> nums) {
    // Change all negative numbers to zero
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] < 0) nums[i] = 0;
    }

    // Check that number is in list. If it is in list we change value of its index to negative
    for (int i = 0; i < nums.length; i++) {
      final n = nums[i].abs();
      if (n >= 1 && n <= nums.length) {
        final idx = n - 1;
        if (nums[idx] > 0) nums[idx] *= -1;
        if (nums[idx] == 0) nums[idx] = -(nums.length + 1);
      }
    }

    // Check if number is positive, its mean that thisnumber didnt appeare in nums
    for (int i = 1; i <= nums.length; i++) {
      if (nums[i - 1] >= 0) return i;
    }
    return nums.length + 1;
  }
}
