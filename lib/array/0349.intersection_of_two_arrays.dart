/*
  0349. Intersection of Two Arrays

  Given two integer arrays nums1 and nums2, return an array of their intersection.
  Each element in the result must be unique and you may return the result in any order.

  Example 1:
    Input: nums1 = [1,2,2,1], nums2 = [2,2]
    Output: [2]

  Example 2:
    Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
    Output: [9,4]
    Explanation: [4,9] is also accepted.

  Constraints:
    1 <= nums1.length, nums2.length <= 1000
    0 <= nums1[i], nums2[i] <= 1000
*/

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    // Bruteforce
    // final result = <int>{};
    // for (int i = 0; i < nums2.length; i++) {
    //   if (nums1.contains(nums2[i])) result.add(nums2[i]);
    // }
    // return result.toList();

    // With updated speed complexity
    final m1 = <int, bool>{};
    final result = <int>{};
    for (int i = 0; i < nums1.length; i++) {
      m1[nums1[i]] = true;
    }
    for (int i = 0; i < nums2.length; i++) {
      if (m1.containsKey(nums2[i])) result.add(nums2[i]);
    }
    return result.toList();
  }
}
