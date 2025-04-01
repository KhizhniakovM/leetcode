#
# @lc app=leetcode id=941 lang=python3
#
# [941] Valid Mountain Array
#
# https://leetcode.com/problems/valid-mountain-array/description/
#
# algorithms
# Easy (33.72%)
# Likes:    3015
# Dislikes: 192
# Total Accepted:    478K
# Total Submissions: 1.4M
# Testcase Example:  '[2,1]'
#
# Given an array of integers arr, return true if and only if it is a valid
# mountain array.
#
# Recall that arr is a mountain array if and only if:
#
#
# arr.length >= 3
# There exists some i with 0 < i < arr.length - 1 such that:
#
# arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
# arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
#
#
#
#
#
# Example 1:
# Input: arr = [2,1]
# Output: false
# Example 2:
# Input: arr = [3,5,5]
# Output: false
# Example 3:
# Input: arr = [0,3,2,1]
# Output: true
#
#
# Constraints:
#
#
# 1 <= arr.length <= 10^4
# 0 <= arr[i] <= 10^4
#
#
#


# @lc code=start
class Solution:
    def validMountainArray(self, arr: list[int]) -> bool:
        if len(arr) < 3:
            return False
        up = True
        current = arr[0]
        for i in range(1, len(arr)):
            if up:
                if arr[i] < current:
                    if i == 1:
                        return False

                    up = False
                elif arr[i] == current:
                    return False
                current = arr[i]
            else:
                if arr[i] >= current:
                    return False
                current = arr[i]

        return not up


# @lc code=end
