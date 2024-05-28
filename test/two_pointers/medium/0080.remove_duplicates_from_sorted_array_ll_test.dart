import 'package:leetcode/two_pointers/medium/0080.remove_duplicates_from_sorted_array_ll.dart';
import 'package:test/test.dart';

void main() => group('remove_duplicates_from_sorted_array_ll', () {
      final f = Solution().removeDuplicates;

      test('f([1,1,1,2,2,3])', () {
        final nums = [1, 1, 1, 2, 2, 3];
        final expected = [1, 1, 2, 2, 3];
        final k = f(nums);
        expect(k, expected.length);
        for (int i = 0; i < k; i++) {
          expect(nums[i], expected[i]);
        }
      });
      test('f([0,0,1,1,1,1,2,3,3])', () {
        final nums = [0, 0, 1, 1, 1, 1, 2, 3, 3];
        final expected = [0, 0, 1, 1, 2, 3, 3];
        final k = f(nums);
        expect(k, expected.length);
        for (int i = 0; i < k; i++) {
          expect(nums[i], expected[i]);
        }
      });
    });
