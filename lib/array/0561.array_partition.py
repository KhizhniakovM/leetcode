#
# @lc app=leetcode id=561 lang=python
#
# [561] Array Partition
#
# https://leetcode.com/problems/array-partition/description/
#
# algorithms
# Easy (79.79%)
# Likes:    2136
# Dislikes: 277
# Total Accepted:    534.5K
# Total Submissions: 669.8K
# Testcase Example:  '[1,4,3,2]'
#
# Given an integer array nums of 2n integers, group these integers into n pairs
# (a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i
# is maximized. Return the maximized sum.
#
#
# Example 1:
#
#
# Input: nums = [1,4,3,2]
# Output: 4
# Explanation: All possible pairings (ignoring the ordering of elements) are:
# 1. (1, 4), (2, 3) -> min(1, 4) + min(2, 3) = 1 + 2 = 3
# 2. (1, 3), (2, 4) -> min(1, 3) + min(2, 4) = 1 + 2 = 3
# 3. (1, 2), (3, 4) -> min(1, 2) + min(3, 4) = 1 + 3 = 4
# So the maximum possible sum is 4.
#
# Example 2:
#
#
# Input: nums = [6,2,6,5,1,2]
# Output: 9
# Explanation: The optimal pairing is (2, 1), (2, 5), (6, 6). min(2, 1) +
# min(2, 5) + min(6, 6) = 1 + 2 + 6 = 9.
#
#
#
# Constraints:
#
#
# 1 <= n <= 10^4
# nums.length == 2 * n
# -10^4 <= nums[i] <= 10^4
#
#
#


# @lc code=start
class Solution(object):
    def arrayPairSum(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        sort = sorted(nums, reverse=True)
        sum = 0
        for i in range(1, len(sort), 2):
            sum += sort[i]
        return sum


# @lc code=end
