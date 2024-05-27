import 'package:leetcode/two_pointers/0026.remove_duplicates_from_sorted_array.dart';
import 'package:test/test.dart';

void main() => group('remove_duplicates_from_sorted_array', () {
      final f = Solution().removeDuplicates;

      test('f([1,1,2])', () {
        final nums = [1, 1, 2];
        final expectedNums = [1, 2];

        int k = f(nums);

        expect(k, expectedNums.length);
        for (int i = 0; i < k; i++) {
          expect(nums[i], expectedNums[i]);
        }
      });
      test('f([0,0,1,1,1,2,2,3,3,4])', () {
        final nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
        final expectedNums = [0, 1, 2, 3, 4];

        int k = f(nums);

        expect(k, expectedNums.length);
        for (int i = 0; i < k; i++) {
          expect(nums[i], expectedNums[i]);
        }
      });
    });
