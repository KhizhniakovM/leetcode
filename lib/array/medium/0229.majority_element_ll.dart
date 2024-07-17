/*
  0229. Majority Element II

  Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

  Example 1:
    Input: nums = [3,2,3]
    Output: [3]

  Example 2:
    Input: nums = [1]
    Output: [1]

  Example 3:
    Input: nums = [1,2]
    Output: [1,2]
  
  Constraints:
    1 <= nums.length <= 5 * 10^4
    -10^9 <= nums[i] <= 10^9

  Follow up: Could you solve the problem in linear time and in O(1) space?
*/

// Bruteforce
class SolutionV1 {
  List<int> majorityElement(List<int> nums) {
    final counter = <int, int>{};
    final result = <int>[];

    for (final n in nums) {
      counter.update(n, (val) => val + 1, ifAbsent: () => 1);
    }

    final minCount = nums.length / 3;
    for (final entry in counter.entries) {
      if (entry.value > minCount) result.add(entry.key);
    }

    return result;
  }
}

class SolutionV2 {
  List<int> majorityElement(List<int> nums) {
    final counter = <int, int>{};

    for (final n in nums) {
      counter.update(n, (val) => val + 1, ifAbsent: () => 1);

      if (counter.length <= 2) continue;

      counter.updateAll((key, val) => val -= 1);
      counter.removeWhere((key, val) => val == 0);
    }

    final result = <int>[];
    final min = nums.length / 3;

    for (final entry in counter.entries) {
      int count = 0;
      for (final n in nums) {
        if (n == entry.key) count += 1;
      }
      if (count > min) result.add(entry.key);
    }

    return result;
  }
}
