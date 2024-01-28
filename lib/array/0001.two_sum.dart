/*
  0001. Two sum 

  Given an array of integers nums and an integer target, return indices of the two numbers 
  such that they add up to target.

  You may assume that each input would have exactly one solution, and you may not 
  use the same element twice.

  You can return the answer in any order.

  Example 1:
    Input: nums = [1,2,3,1]
    Output: true

  Example 2:
    Input: nums = [1,2,3,4]
    Output: false

  Example 3:
    Input: nums = [1,1,1,3,3,4,3,2,4,2]
    Output: true

  Constraints:
    1 <= nums.length <= 105
    -109 <= nums[i] <= 109
*/

class SolutionV1 {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return <int>[];
  }
}
