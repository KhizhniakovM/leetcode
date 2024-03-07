/*
  0075. Sort Colors

  Given an array nums with n objects colored red, white, or blue, 
  sort them in-place so that objects of the same color are adjacent, 
  with the colors in the order red, white, and blue.

  We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

  You must solve this problem without using the library's sort function.

  Example 1:
    Input: nums = [2,0,2,1,1,0]
    Output: [0,0,1,1,2,2]

  Example 2:
    Input: nums = [2,0,1]
    Output: [0,1,2]
  
  Constraints:
    n == nums.length
    1 <= n <= 300
    nums[i] is either 0, 1, or 2.

  Follow up: Could you come up with a one-pass algorithm using only constant extra space?
*/

class SolutionV1 {
  void sortColors(List<int> nums) {
    final counter = <int, int>{};
    for (final n in nums) {
      counter.update(n, (value) => value + 1, ifAbsent: () => 1);
    }

    for (int i = 0; i < nums.length; i++) {
      if (counter.containsKey(0)) {
        nums[i] = 0;
        counter.update(0, (value) => value - 1);
        if (counter[0] == 0) counter.remove(0);
      } else if (counter.containsKey(1)) {
        nums[i] = 1;
        counter.update(1, (value) => value - 1);
        if (counter[1] == 0) counter.remove(1);
      } else {
        nums[i] = 2;
      }
    }
  }
}

class SolutionV2 {
  void sortColors(List<int> nums) {
    void swap(int i, int j) {
      final tmp = nums[i];
      nums[i] = nums[j];
      nums[j] = tmp;
    }

    int left = 0, right = nums.length - 1;
    int idx = 0;
    while (idx <= right) {
      if (nums[idx] == 0) {
        swap(idx, left);
        left += 1;
      } else if (nums[idx] == 2) {
        swap(idx, right);
        right -= 1;
        idx -= 1;
      }
      idx += 1;
    }
  }
}
