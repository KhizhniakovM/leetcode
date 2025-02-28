#
# @lc app=leetcode id=207 lang=python3
#
# [207] Course Schedule
#
# https://leetcode.com/problems/course-schedule/description/
#
# algorithms
# Medium (48.07%)
# Likes:    16726
# Dislikes: 771
# Total Accepted:    1.9M
# Total Submissions: 3.9M
# Testcase Example:  '2\n[[1,0]]'
#
# There are a total of numCourses courses you have to take, labeled from 0 to
# numCourses - 1. You are given an array prerequisites where prerequisites[i] =
# [ai, bi] indicates that you must take course bi first if you want to take
# course ai.
#
#
# For example, the pair [0, 1], indicates that to take course 0 you have to
# first take course 1.
#
#
# Return true if you can finish all courses. Otherwise, return false.
#
#
# Example 1:
#
#
# Input: numCourses = 2, prerequisites = [[1,0]]
# Output: true
# Explanation: There are a total of 2 courses to take.
# To take course 1 you should have finished course 0. So it is possible.
#
#
# Example 2:
#
#
# Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
# Output: false
# Explanation: There are a total of 2 courses to take.
# To take course 1 you should have finished course 0, and to take course 0 you
# should also have finished course 1. So it is impossible.
#
#
#
# Constraints:
#
#
# 1 <= numCourses <= 2000
# 0 <= prerequisites.length <= 5000
# prerequisites[i].length == 2
# 0 <= ai, bi < numCourses
# All the pairs prerequisites[i] are unique.
#
#
#


# @lc code=start
class Solution:
    def canFinish(self, numCourses: int, prerequisites: list[list[int]]) -> bool:
        vectors_dict: dict[int, list[int]] = {}
        for vector in prerequisites:
            current_list = vectors_dict.get(vector[1], [])
            current_list.append(vector[0])
            vectors_dict[vector[1]] = current_list

        indegrees: dict[int, int] = {}
        for i in range(numCourses):
            indegrees[i] = 0

        for values in vectors_dict.values():
            for value in values:
                indegrees[value] += 1

        queue = []
        for key, value in indegrees.items():
            if value == 0:
                queue.append(key)

        counter = 0

        while queue:
            v = queue.pop(0)

            for value in vectors_dict.get(v, []):
                indegrees[value] -= 1
                if indegrees[value] == 0:
                    queue.append(value)

            counter += 1

        return counter == numCourses

# @lc code=end
