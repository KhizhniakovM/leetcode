#
# @lc app=leetcode id=1037 lang=python
#
# [1037] Valid Boomerang
#
# https://leetcode.com/problems/valid-boomerang/description/
#
# algorithms
# Easy (37.50%)
# Likes:    433
# Dislikes: 533
# Total Accepted:    60K
# Total Submissions: 159.9K
# Testcase Example:  '[[1,1],[2,3],[3,2]]'
#
# Given an array points where points[i] = [xi, yi] represents a point on the
# X-Y plane, return true if these points are a boomerang.
#
# A boomerang is a set of three points that are all distinct and not in a
# straight line.
#
#
# Example 1:
# Input: points = [[1,1],[2,3],[3,2]]
# Output: true
# Example 2:
# Input: points = [[1,1],[2,2],[3,3]]
# Output: false
#
#
# Constraints:
#
#
# points.length == 3
# points[i].length == 2
# 0 <= xi, yi <= 100
#
#
#


# @lc code=start
class Solution(object):
    def isBoomerang(self, points):
        """
        :type points: List[List[int]]
        :rtype: bool

        Для расчета необходимо использовать формулу вычисления углового коэффициента
        """

        def get_slope(p1, p2):
            return [p2[0] - p1[0], p2[1] - p1[1]]

        dx1, dy1 = get_slope(points[0], points[1])
        dx2, dy2 = get_slope(points[1], points[2])

        return dy1 * dx2 != dy2 * dx1


# @lc code=end
