/*
  0169. Majority Element

  Given an array nums of size n, return the majority element.
  The majority element is the element that appears more than ⌊n / 2⌋ times. 
  You may assume that the majority element always exists in the array.

  Example 1:
    Input: nums = [3,2,3]
    Output: 3

  Example 2:
    Input: nums = [2,2,1,1,1,2,2]
    Output: 2

  Constraints:
    n == nums.length
    1 <= n <= 5 * 104
    -109 <= nums[i] <= 109

  Follow-up: Could you solve the problem in linear time and in O(1) space?
*/

class SolutionV1 {
  int majorityElement(List<int> nums) {
    final freq = <int, int>{};
    for (final i in nums) {
      if (freq.containsKey(i)) {
        final tmp = freq[i]!;
        freq[i] = tmp + 1;
      } else {
        freq[i] = 1;
      }
    }
    int max = 0;
    int count = 0;
    for (final j in freq.entries) {
      if (j.value > count) {
        max = j.key;
        count = j.value;
      }
    }
    return max;
  }
}

// Follow-up: Could you solve the problem in linear time and in O(1) space?
class SolutionV2 {
  int majorityElement(List<int> nums) {
    int result = 0, count = 0;

    for (final n in nums) {
      if (count == 0) result = n;
      count += (n == result ? 1 : -1);
    }
    return result;
  }
}
