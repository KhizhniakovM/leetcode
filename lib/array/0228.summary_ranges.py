# 228. Summary Ranges

# You are given a sorted unique integer array nums.

# A range [a,b] is the set of all integers from a to b (inclusive).

# Return the smallest sorted list of ranges that cover all the numbers in the array exactly.
# That is, each element of nums is covered by exactly one of the ranges,
# and there is no integer x such that x is in one of the ranges but not in nums.

# Each range [a,b] in the list should be output as:

# "a->b" if a != b
# "a" if a == b

# Example 1:
#   Input: nums = [0,1,2,4,5,7]
#   Output: ["0->2","4->5","7"]
#   Explanation: The ranges are:
#   [0,2] --> "0->2"
#   [4,5] --> "4->5"
#   [7,7] --> "7"

# Example 2:
#   Input: nums = [0,2,3,4,6,8,9]
#   Output: ["0","2->4","6","8->9"]
#   Explanation: The ranges are:
#   [0,0] --> "0"
#   [2,4] --> "2->4"
#   [6,6] --> "6"
#   [8,9] --> "8->9"


# Constraints:
#   0 <= nums.length <= 20
#   -2^31 <= nums[i] <= 2^31 - 1
#   All the values of nums are unique.
#   nums is sorted in ascending order.

# ==================================================


class Solution:
    """
    Time O(n)
    Memory O(n)

    """

    def summaryRanges(self, nums: list[int]) -> list[str]:
        if len(nums) == 0:
            return []

        result: list[str] = []
        start: int = nums[0]
        end: int | None = None

        for idx in range(1, len(nums)):
            if end == None:
                if abs(nums[idx] - start) > 1:
                    result.append(f"{start}")
                    start = nums[idx]
                else:
                    end = nums[idx]
            else:
                if abs(nums[idx] - end) > 1:
                    result.append(f"{start}->{end}")
                    start = nums[idx]
                    end = None
                else:
                    end = nums[idx]

        if end == None:
            result.append(f"{start}")
        else:
            result.append(f"{start}->{end}")

        return result


sol = Solution()
# print(sol.summaryRanges([0, 1, 2, 4, 5, 7]))
# print(sol.summaryRanges([0, 2, 3, 4, 6, 8, 9]))
print(sol.summaryRanges([-1, 0, 2, 9]))
