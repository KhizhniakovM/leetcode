#
# @lc app=leetcode id=55 lang=python3
#
# [55] Jump Game
#
# https://leetcode.com/problems/jump-game/description/
#
# algorithms
# Medium (38.98%)
# Likes:    20069
# Dislikes: 1339
# Total Accepted:    2.4M
# Total Submissions: 6.1M
# Testcase Example:  '[2,3,1,1,4]'
#
# You are given an integer array nums. You are initially positioned at the
# array's first index, and each element in the array represents your maximum
# jump length at that position.
#
# Return true if you can reach the last index, or false otherwise.
#
#
# Example 1:
#
#
# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
#
#
# Example 2:
#
#
# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum
# jump length is 0, which makes it impossible to reach the last index.
#
#
#
# Constraints:
#
#
# 1 <= nums.length <= 10^4
# 0 <= nums[i] <= 10^5
#
#
#


# @lc code=start
class SolutionV1:
    def canJump(self, nums: list[int]) -> bool:
        """
        Bruteforce
        Time: O(n)
        Memory: O(1)
        """
        if len(nums) == 1:
            return True

        current_index = 0
        current_max_jump = nums[0]

        while current_index < len(nums) - 1:
            if current_max_jump == 0:
                return False

            max_next = current_index + 1
            if current_index + current_max_jump + 1 >= len(nums):
                return True

            for i in range(current_index + 1, current_index + current_max_jump + 1):
                if nums[i] >= current_max_jump:
                    current_index = i
                    current_max_jump = nums[i]
                    break

                if nums[i] >= nums[max_next] - (i - max_next):
                    max_next = i

                if i == current_index + current_max_jump:
                    current_index = max_next
                    current_max_jump = nums[max_next]
                    break

        return True


class SolutionV2:
    def canJump(self, nums: list[int]) -> bool:
        """
        Greedy
        Time: O(n)
        Memory: O(1)
        """
        goal = len(nums) - 1

        for i in range(len(nums) - 1, -1, -1):
            if i + nums[i] >= goal:
                goal = i

        return goal == 0


# @lc code=end
