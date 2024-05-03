/*
  2306. Naming a Company

  You are given an array of strings ideas that represents a list of names to be used 
  in the process of naming a company. The process of naming a company is as follows:

  1. Choose 2 distinct names from ideas, call them ideaA and ideaB.
  2. Swap the first letters of ideaA and ideaB with each other.
  3. If both of the new names are not found in the original ideas, 
    then the name ideaA ideaB (the concatenation of ideaA and ideaB, separated by a space) 
    is a valid company name.
  4. Otherwise, it is not a valid name.

  Return the number of distinct valid names for the company.

  Example 1:
    Input: ideas = ["coffee","donuts","time","toffee"]
    Output: 6
    Explanation: The following selections are valid:
    - ("coffee", "donuts"): The company name created is "doffee conuts".
    - ("donuts", "coffee"): The company name created is "conuts doffee".
    - ("donuts", "time"): The company name created is "tonuts dime".
    - ("donuts", "toffee"): The company name created is "tonuts doffee".
    - ("time", "donuts"): The company name created is "dime tonuts".
    - ("toffee", "donuts"): The company name created is "doffee tonuts".
    Therefore, there are a total of 6 distinct company names.

    The following are some examples of invalid selections:
    - ("coffee", "time"): The name "toffee" formed after swapping already exists in the original array.
    - ("time", "toffee"): Both names are still the same after swapping and exist in the original array.
    - ("coffee", "toffee"): Both names formed after swapping already exist in the original array.

  Example 2:
    Input: ideas = ["lack","back"]
    Output: 0
    Explanation: There are no valid selections. Therefore, 0 is returned.
  
  Constraints:
    2 <= ideas.length <= 5 * 10^4
    1 <= ideas[i].length <= 10
    ideas[i] consists of lowercase English letters.
    All the strings in ideas are unique.
*/

class Solution {
  int distinctNames(List<String> ideas) {
    final map = <String, Set<String>>{};
    int result = 0;

    for (final idea in ideas) {
      final prefix = idea.substring(0, 1);
      final suffix = idea.substring(1);
      map.update(prefix, (val) => val..add(suffix), ifAbsent: () => {suffix});
    }

    for (int i = 0; i < map.length; i++) {
      for (int j = 0; j < map.length; j++) {
        if (i == j) continue;
        int intersection = 0;

        final first = map.values.elementAt(i);
        final second = map.values.elementAt(j);

        for (final idea in first) {
          if (second.contains(idea)) intersection += 1;
        }

        final distinct1 = first.length - intersection;
        final distinct2 = second.length - intersection;

        result += (distinct1 * distinct2);
      }
    }

    return result;
  }
}

/// Bruteforce
/// Leetcode: Time Limit Exceeded
// int distinctNames(List<String> ideas) {
//   final set = ideas.toSet();
//   int result = 0;

//   for (int i = 0; i < ideas.length; i++) {
//     for (int j = 0; j < ideas.length; j++) {
//       if (i == j) continue;
//       final first = ideas[j].substring(0, 1) + ideas[i].substring(1);
//       final second = ideas[i].substring(0, 1) + ideas[j].substring(1);

//       if (set.contains(first) || set.contains(second)) continue;
//       result++;
//     }
//   }

//   return result;
// }
