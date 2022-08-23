// 1832. Check if the Sentence Is Pangram
// A pangram is a sentence where every letter of the English alphabet
// appears at least once.
// Given a string sentence containing only lowercase English letters,
// return true if sentence is a pangram, or false otherwise.

// Example 1:
// Input: sentence = "thequickbrownfoxjumpsoverthelazydog"
// Output: true
// Explanation: sentence contains at least one of every letter of the English alphabet.

// Example 2:
// Input: sentence = "leetcode"
// Output: false

// Constraints:
// 1 <= sentence.length <= 1000
// sentence consists of lowercase English letters.

package problem

func CheckIfPangram(sentence string) bool {
	alphabet := "abcdefghijklmnopqrstuvwxyz"
	chMap := make(map[rune]bool)

	for _, l := range sentence {
		chMap[l] = true
	}
	for _, l := range alphabet {
		if !chMap[l] {
			return false
		}
	}
	return true
}
