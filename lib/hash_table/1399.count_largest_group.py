# 1399. Count Largest Group

# You are given an integer n.
# Each number from 1 to n is grouped according to the sum of its digits.
# Return the number of groups that have the largest size.

# Example 1:
#   Input: n = 13
#   Output: 4
#   Explanation: There are 9 groups in total, they are grouped according sum of its digits of numbers from 1 to 13:
#   [1,10], [2,11], [3,12], [4,13], [5], [6], [7], [8], [9].
#   There are 4 groups with largest size.

# Example 2:
#   Input: n = 2
#   Output: 2
#   Explanation: There are 2 groups [1], [2] of size 1.

# Constraints:
#   1 <= n <= (10^4 == 10 000)

# ==================================================
# Solution process

# Нам нужно поделить все числа в промежутке от 1 до n на группы по признаку суммы всех его разрядов
# Примеры:
#   12 -> 1 + 2 -> 3
#   151 -> 1 + 5 + 1 -> 7
#   999 -> 9 + 9 + 9 -> 27

# После этого нам необходимо вернуть количество групп с наибольшим числом членов в группе
# Примеры:
#   6 групп: 1 элемент, 4 элемента, 4 элемента, 2 элемента, 2 элемента, 3 элемента
#   Ответ: 2 группы (те которые по 4 элемента)


# Так как максимальное число равно 10^4, и нам нужно пройтись по каждому числу от 1 до n,
# и дополнительно пройтись по каждому разряду каждого числа
# Получится сложность алгоритма O(n * 5)
# Плюс сложность по памяти O(n), так как нам нужно хранить некоторое количество раезультатов подсчета

# Дополнительные идеи:
# Так как максимальное число равно 10 000, то максимальная сумма всех его разрядов равна 9+9+9+9, то есть 36
# Это позволяет нам использовать другую струкутуру данных, для хранения таблицы, например простой массив

# ==================================================


class Solution:
    def countLargestGroup(self, n: int) -> int:
        # Создадим словарь в котором будем хранить количество всех групп
        table: dict[int, int] = {}
        result = 0

        # Пройдемся по каждому числу
        for number in range(1, n + 1):
            current_sum = 0

            # Пройдемся по каждому разряду числа
            for r in str(number):
                current_sum += int(r)

            if not current_sum in table:
                table[current_sum] = 0
            table[current_sum] += 1

        max_value = max(table.values())
        for value in table.values():
            if value == max_value:
                result += 1

        return result


sol = Solution()
result = sol.countLargestGroup(10000)
print(result)
