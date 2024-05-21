/*
  0283. Move Zeroes
  
  Given an integer array nums, move all 0's to the end of it while maintaining 
  the relative order of the non-zero elements.

  Note that you must do this in-place without making a copy of the array.

  Example 1:
    Input: nums = [0,1,0,3,12]
    Output: [1,3,12,0,0]

  Example 2:
    Input: nums = [0]
    Output: [0]
  
  Constraints:
    1 <= nums.length <= 10^4
    -2^31 <= nums[i] <= 2^31 - 1
  
  Follow up: Could you minimize the total number of operations done?
*/

class Solution {
  void moveZeroes(List<int> nums) {
    int left = 0;

    for (int right = 0; right < nums.length; right++) {
      if (nums[right] != 0) {
        final tmp = nums[left];
        nums[left] = nums[right];
        nums[right] = tmp;
        left++;
      }
    }
  }
}
