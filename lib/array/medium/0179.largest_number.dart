/*
  0179. Largest Number

  Given a list of non-negative integers nums, 
  arrange them such that they form the largest number and return it.

  Since the result may be very large, so you need to return a string instead of an integer.

  Example 1:
    Input: nums = [10,2]
    Output: "210"

  Example 2:
    Input: nums = [3,30,34,5,9]
    Output: "9534330"
  
  Constraints:
    1 <= nums.length <= 100
    0 <= nums[i] <= 10^9
*/

class Solution {
  String largestNumber(List<int> nums) {
    int largestSort(int a, int b) {
      final tmp1 = BigInt.parse('$a$b');
      final tmp2 = BigInt.parse('$b$a');

      return -tmp1.compareTo(tmp2);
    }

    nums.sort(largestSort);
    return BigInt.parse(nums.join()).toString();
  }
}
