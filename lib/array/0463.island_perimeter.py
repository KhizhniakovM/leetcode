#
# @lc app=leetcode id=463 lang=python
#
# [463] Island Perimeter
#
# https://leetcode.com/problems/island-perimeter/description/
#
# algorithms
# Easy (73.21%)
# Likes:    6939
# Dislikes: 400
# Total Accepted:    688.2K
# Total Submissions: 939.9K
# Testcase Example:  '[[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]'
#
# You are given row x col grid representing a map where grid[i][j] = 1
# represents land and grid[i][j] = 0 represents water.
#
# Grid cells are connected horizontally/vertically (not diagonally). The grid
# is completely surrounded by water, and there is exactly one island (i.e., one
# or more connected land cells).
#
# The island doesn't have "lakes", meaning the water inside isn't connected to
# the water around the island. One cell is a square with side length 1. The
# grid is rectangular, width and height don't exceed 100. Determine the
# perimeter of the island.
#
#
# Example 1:
#
#
# Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
# Output: 16
# Explanation: The perimeter is the 16 yellow stripes in the image above.
#
#
# Example 2:
#
#
# Input: grid = [[1]]
# Output: 4
#
#
# Example 3:
#
#
# Input: grid = [[1,0]]
# Output: 4
#
#
#
# Constraints:
#
#
# row == grid.length
# col == grid[i].length
# 1 <= row, col <= 100
# grid[i][j] is 0 or 1.
# There is exactly one island in grid.
#
#
#


# @lc code=start
class SolutionV1(object):
    def islandPerimeter(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int

        Bruteforce

        Time: O(row * col)
        Memory: O(1)
        """
        result = 0
        for row in range(len(grid)):
            for col in range(len(grid[0])):
                if grid[row][col] == 0:
                    continue
                add = 4
                # Check all squares nearby
                # If there is a point add -= 1
                if row != 0:
                    if grid[row - 1][col] == 1:
                        add -= 1
                if col != 0:
                    if grid[row][col - 1] == 1:
                        add -= 1
                if row != len(grid) - 1:
                    if grid[row + 1][col] == 1:
                        add -= 1
                if col != len(grid[0]) - 1:
                    if grid[row][col + 1] == 1:
                        add -= 1

                result += add
        return result


class SolutionV2(object):
    def islandPerimeter(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int

        DFS

        Time: O(row * col)
        Memory: O(row * col)
        """
        visited = set()

        def dfs(i, j):
            # basic case
            if i >= len(grid) or j >= len(grid[0]) or i < 0 or j < 0 or grid[i][j] == 0:
                return 1
            if (i, j) in visited:
                return 0
            visited.add((i, j))

            perim = dfs(i, j + 1)
            perim += dfs(i + 1, j)
            perim += dfs(i, j - 1)
            perim += dfs(i - 1, j)
            return perim

        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == 1:
                    return dfs(i, j)


# @lc code=end
