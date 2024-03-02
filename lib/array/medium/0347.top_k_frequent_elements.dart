/*
  0347. Top K Frequent Elements

  Given an integer array nums and an integer k, return the k most frequent elements. 
  You may return the answer in any order.

  Example 1:
    Input: nums = [1,1,1,2,2,3], k = 2
    Output: [1,2]

  Example 2:
    Input: nums = [1], k = 1
    Output: [1]

  Constraints:
    1 <= nums.length <= 105
    -104 <= nums[i] <= 104
    k is in the range [1, the number of unique elements in the array].
    It is guaranteed that the answer is unique.
  
  Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
*/

class SolutionV1 {
  List<int> topKFrequent(List<int> nums, int k) {
    final freq = <int, int>{};
    for (final n in nums) {
      freq.update(n, (val) => val += 1, ifAbsent: () => 1);
    }
    final entries = freq.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return entries.sublist(0, k).map((e) => e.key).toList();
  }
}

// Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
class SolutionV2 {
  List<int> topKFrequent(List<int> nums, int k) {
    final count = <int, int>{};
    final freq = List.generate(nums.length + 1, (_) => <int>[]);
    // Count all numbers in [nums]
    for (final n in nums) {
      count.update(n, (val) => val += 1, ifAbsent: () => 1);
    }
    // Max possible frequency is nums.length
    // So, we add all numbers to list in (index == frequency)
    for (final entry in count.entries) {
      freq[entry.value].add(entry.key);
    }

    final result = <int>[];
    for (int i = freq.length - 1; i >= 0; i--) {
      if (freq[i].isNotEmpty) {
        for (final n in freq[i]) {
          result.add(n);
          if (result.length == k) return result;
        }
      }
    }
    return result;
  }
}
