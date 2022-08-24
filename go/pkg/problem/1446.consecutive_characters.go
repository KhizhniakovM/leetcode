// 1446. Consecutive Characters
// The power of the string is the maximum length of a non-empty substring that
// contains only one unique character.
// Given a string s, return the power of s.

// Example 1:
// Input: s = "leetcode"
// Output: 2
// Explanation: The substring "ee" is of length 2 with the character 'e' only.

// Example 2:
// Input: s = "abbcccddddeeeeedcba"
// Output: 5
// Explanation: The substring "eeeee" is of length 5 with the character 'e' only.

// Constraints:
// 1 <= s.length <= 500
// s consists of only lowercase English letters.

package problem

func MaxPower(s string) int {
	var max, current int = 1, 1

	for i := 1; i < len(s); i++ {
		if s[i-1] == s[i] {
			current += 1
		} else {
			current = 1
		}
		if max < current {
			max = current
		}
	}
	return max
}
