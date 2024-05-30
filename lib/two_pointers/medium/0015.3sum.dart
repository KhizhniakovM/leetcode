/*
  0015. 3sum

  Given an integer array nums, return all the triplets 
  [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, 
  and nums[i] + nums[j] + nums[k] == 0.

  Notice that the solution set must not contain duplicate triplets.

  Example 1:
    Input: nums = [-1,0,1,2,-1,-4]
    Output: [[-1,-1,2],[-1,0,1]]
    Explanation: 
    nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
    nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
    nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
    The distinct triplets are [-1,0,1] and [-1,-1,2].
    Notice that the order of the output and the order of the triplets does not matter.

  Example 2:
    Input: nums = [0,1,1]
    Output: []
    Explanation: The only possible triplet does not sum up to 0.

  Example 3:
    Input: nums = [0,0,0]
    Output: [[0,0,0]]
    Explanation: The only possible triplet sums up to 0.
  

  Constraints:
    3 <= nums.length <= 3000
    -10^5 <= nums[i] <= 10^5
*/

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    final result = <List<int>>[];
    // 1. Сортируем исходный массив
    nums.sort();

    // 2. Проходим по всему массиву
    for (int i = 0; i < nums.length; i++) {
      // 3. Пропускаем все лдинаковые элементы
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      // 4. Используем two pointers
      int left = i + 1, right = nums.length - 1;

      while (left < right) {
        final sum = nums[i] + nums[left] + nums[right];
        // 5. Если сумма равна 0, то записываем ответ
        // Далее сдвигаем указатели друг к другу до тех пор, пока они не обновятся
        if (sum == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          left++;
          right--;

          while (nums[left] == nums[left - 1] && left < right) {
            left++;
          }
          while (nums[right] == nums[right + 1] && left < right) {
            right--;
          }
        } else if (sum > 0) {
          // Если сумма больше 0, то сдвигаем правый указатель
          right--;
        } else if (sum < 0) {
          // Если сумма меньше 0, то сдвигаем левый указатель
          left++;
        }
      }
    }

    return result;
  }
}
