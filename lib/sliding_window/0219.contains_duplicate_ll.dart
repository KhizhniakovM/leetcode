/*
  0219. Contains Duplicate II

  Given an integer array nums and an integer k, 
  return true if there are two distinct indices i and j in the array such 
  that nums[i] == nums[j] and abs(i - j) <= k.

  Example 1:
    Input: nums = [1,2,3,1], k = 3
    Output: true

  Example 2:
    Input: nums = [1,0,1,1], k = 1
    Output: true

  Example 3:
    Input: nums = [1,2,3,1,2,3], k = 2
    Output: false
  
  Constraints:
    1 <= nums.length <= 10^5
    -10^9 <= nums[i] <= 10^9
    0 <= k <= 10^5
*/

class SolutionV1 {
  /// Time O(n)
  /// Memory O(n)
  /// Sliding window with counter
  bool containsNearbyDuplicate(List<int> nums, int k) {
    final tmp = <int, int>{};
    int left = 0;

    for (int right = 0; right < nums.length; right++) {
      final curRight = nums[right];
      if (right - left > k) {
        final curLeft = nums[left];
        tmp.update(curLeft, (val) => val - 1);
        if (tmp[curLeft] == 0) tmp.remove(curLeft);
        left++;
      }
      if (tmp.containsKey(curRight)) return true;
      tmp.update(curRight, (val) => val + 1, ifAbsent: () => 1);
    }

    return false;
  }
}

class SolutionV2 {
  /// Time O(n)
  /// Memory O(n)
  /// Sliding window with saving last index
  bool containsNearbyDuplicate(List<int> nums, int k) {
    final tmp = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      final cur = nums[i];
      if (tmp.containsKey(cur)) {
        if (i - tmp[cur]! <= k) return true;
      }
      tmp[cur] = i;
    }

    return false;
  }
}
