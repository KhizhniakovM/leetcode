/*
  0238. Product of Array Except Self

  Given an integer array nums, return an array answer such that answer[i] is equal 
  to the product of all the elements of nums except nums[i].

  The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

  You must write an algorithm that runs in O(n) time and without using the division operation.

  Example 1:
    Input: nums = [1,2,3,4]
    Output: [24,12,8,6]

  Example 2:
    Input: nums = [-1,1,0,-3,3]
    Output: [0,0,9,0,0]
  
  Constraints:
    2 <= nums.length <= 105
    -30 <= nums[i] <= 30
    The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
  
  Follow up: Can you solve the problem in O(1) extra space complexity? 
  (The output array does not count as extra space for space complexity analysis.)

  Bruteforce O(n^2):
  List<int> productExceptSelf(List<int> nums) {
    final res = List.generate(nums.length, (_) => 1);
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < res.length; j++) {
        if (i == j) continue;
        res[j] *= nums[i];
      }
    }
    return res;
  }
*/

class SolutionV1 {
  List<int> productExceptSelf(List<int> nums) {
    final prefixList = List.generate(nums.length, (_) => 1);
    final postfixList = List.generate(nums.length, (_) => 1);
    final res = List.generate(nums.length, (_) => 1);

    for (int i = 1; i < nums.length; i++) {
      prefixList[i] = prefixList[i - 1] * nums[i - 1];
    }
    for (int i = nums.length - 2; i >= 0; i--) {
      postfixList[i] = postfixList[i + 1] * nums[i + 1];
    }
    for (int i = 0; i < nums.length; i++) {
      res[i] = prefixList[i] * postfixList[i];
    }
    return res;
  }
}

class SolutionV2 {
  List<int> productExceptSelf(List<int> nums) {
    final res = List.generate(nums.length, (_) => 1);

    int prefix = 1;
    for (int i = 0; i < nums.length; i++) {
      res[i] = prefix;
      prefix *= nums[i];
    }
    int postfix = 1;
    for (int i = nums.length - 1; i >= 0; i--) {
      res[i] *= postfix;
      postfix *= nums[i];
    }

    return res;
  }
}
