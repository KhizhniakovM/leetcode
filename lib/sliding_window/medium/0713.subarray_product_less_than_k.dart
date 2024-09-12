/*
  0713. Subarray Product Less Than K

  Given an array of integers nums and an integer k, return the number of contiguous 
  subarrays where the product of all the elements in the subarray is strictly less than k.

  Example 1:
    Input: nums = [10,5,2,6], k = 100
    Output: 8
    Explanation: The 8 subarrays that have product less than 100 are:
    [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6]
    Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

  Example 2:
    Input: nums = [1,2,3], k = 0
    Output: 0
  
  Constraints:
    1 <= nums.length <= 3 * 10^4
    1 <= nums[i] <= 1000
    0 <= k <= 10^6
*/

class Solution {
  /// Time O(n)
  /// Memory O(1)
  int numSubarrayProductLessThanK(List<int> nums, int k) {
    int result = 0;
    int windowStart = 0, windowProduct = 1;

    for (int windowEnd = 0; windowEnd < nums.length; windowEnd++) {
      final right = nums[windowEnd];
      windowProduct *= right;

      while (windowProduct >= k && windowStart <= windowEnd) {
        windowProduct = windowProduct ~/ nums[windowStart];
        windowStart += 1;
      }

      result += windowEnd - windowStart + 1;
    }

    return result;
  }
}
