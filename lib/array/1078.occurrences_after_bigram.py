#
# @lc app=leetcode id=1078 lang=python
#
# [1078] Occurrences After Bigram
#
# https://leetcode.com/problems/occurrences-after-bigram/description/
#
# algorithms
# Easy (63.57%)
# Likes:    507
# Dislikes: 363
# Total Accepted:    79.8K
# Total Submissions: 125.6K
# Testcase Example:  '"alice is a good girl she is a good student"\n"a"\n"good"'
#
# Given two strings first and second, consider occurrences in some text of the
# form "first second third", where second comes immediately after first, and
# third comes immediately after second.
#
# Return an array of all the words third for each occurrence of "first second
# third".
#
#
# Example 1:
# Input: text = "alice is a good girl she is a good student", first = "a",
# second = "good"
# Output: ["girl","student"]
# Example 2:
# Input: text = "we will we will rock you", first = "we", second = "will"
# Output: ["we","rock"]
#
#
# Constraints:
#
#
# 1 <= text.length <= 1000
# text consists of lowercase English letters and spaces.
# All the words in text are separated by a single space.
# 1 <= first.length, second.length <= 10
# first and second consist of lowercase English letters.
# text will not have any leading or trailing spaces.
#
#
#


# @lc code=start
class Solution(object):
    def findOcurrences(self, text, first, second):
        """
        :type text: str
        :type first: str
        :type second: str
        :rtype: List[str]

        Time: O(n)
        Memory: O(n)
        """
        result = []
        text_splitted = text.split(" ")

        for i in range(2, len(text_splitted)):
            t1 = text_splitted[i - 2]
            t2 = text_splitted[i - 1]

            if t1 == first and t2 == second:
                result.append(text_splitted[i])

        return result


# @lc code=end
