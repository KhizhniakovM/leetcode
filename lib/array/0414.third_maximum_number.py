#
# @lc app=leetcode id=414 lang=python
#
# [414] Third Maximum Number
#
# https://leetcode.com/problems/third-maximum-number/description/
#
# algorithms
# Easy (36.27%)
# Likes:    3153
# Dislikes: 3280
# Total Accepted:    622.4K
# Total Submissions: 1.7M
# Testcase Example:  '[3,2,1]'
#
# Given an integer array nums, return the third distinct maximum number in this
# array. If the third maximum does not exist, return the maximum number.
#
#
# Example 1:
#
#
# Input: nums = [3,2,1]
# Output: 1
# Explanation:
# The first distinct maximum is 3.
# The second distinct maximum is 2.
# The third distinct maximum is 1.
#
#
# Example 2:
#
#
# Input: nums = [1,2]
# Output: 2
# Explanation:
# The first distinct maximum is 2.
# The second distinct maximum is 1.
# The third distinct maximum does not exist, so the maximum (2) is returned
# instead.
#
#
# Example 3:
#
#
# Input: nums = [2,2,3,1]
# Output: 1
# Explanation:
# The first distinct maximum is 3.
# The second distinct maximum is 2 (both 2's are counted together since they
# have the same value).
# The third distinct maximum is 1.
#
#
#
# Constraints:
#
#
# 1 <= nums.length <= 10^4
# -2^31 <= nums[i] <= 2^31 - 1
#
#
#
# Follow up: Can you find an O(n) solution?
#


# @lc code=start
class SolutionV1(object):
    def thirdMax(self, nums):
        """
        :type nums: List[int]
        :rtype: int

        Bruteforce

        Time: O(n log n)
        Memory: O(n)
        """
        s = set(nums)
        n = sorted(s, reverse=True)
        if len(n) < 3:
            return n[0]
        return n[2]


class SolutionV2(object):
    def thirdMax(self, nums):
        """
        :type nums: List[int]
        :rtype: int

        Time: O(n)
        Memory: O(1)
        """
        biggest = None
        biggest2 = None
        biggest3 = None

        for n in nums:
            if n == biggest or n == biggest2 or n == biggest3:
                continue
            if biggest == None or n > biggest:
                biggest3 = biggest2
                biggest2 = biggest
                biggest = n
            elif biggest2 == None or n > biggest2:
                biggest3 = biggest2
                biggest2 = n
            elif biggest3 == None or n > biggest3:
                biggest3 = n

        if biggest == None or biggest2 == None or biggest3 == None:
            return biggest
        if biggest == biggest2 or biggest2 == biggest3:
            return biggest

        return biggest3


# @lc code=end
