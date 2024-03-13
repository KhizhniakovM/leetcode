/*
  0560. Subarray Sum Equals K

  Given an array of integers nums and an integer k, 
  return the total number of subarrays whose sum equals to k.

  A subarray is a contiguous non-empty sequence of elements within an array.

  Example 1:
    Input: nums = [1,1,1], k = 2
    Output: 2

  Example 2:
    Input: nums = [1,2,3], k = 3
    Output: 2
  
  Constraints:
    1 <= nums.length <= 2 * 104
    -1000 <= nums[i] <= 1000
    -107 <= k <= 107
*/

/// Bruteforce O(n^2)
class SolutionV1 {
  int subarraySum(List<int> nums, int k) {
    int result = 0;

    for (int left = 0; left < nums.length; left++) {
      int tmp = 0;
      for (int right = left; right < nums.length; right++) {
        tmp += nums[right];
        if (tmp == k) result += 1;
      }
    }
    return result;
  }
}

/// O(n)
class SolutionV2 {
  int subarraySum(List<int> nums, int k) {
    int result = 0, tmpSum = 0;
    final prefixSum = <int, int>{0: 1};

    for (final n in nums) {
      tmpSum += n;
      final diff = tmpSum - k;

      result += prefixSum[diff] ?? 0;
      prefixSum.update(tmpSum, (val) => val + 1, ifAbsent: () => 1);
    }

    return result;
  }
}
