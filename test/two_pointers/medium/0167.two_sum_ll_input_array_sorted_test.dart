import 'package:leetcode/two_pointers/medium/0167.two_sum_ll_input_array_sorted.dart';
import 'package:test/test.dart';

void main() => group('two_sum_ll_input_array_sorted', () {
      final f = Solution().twoSum;

      test('f([2,7,11,15], 9)', () {
        expect(
          f([2, 7, 11, 15], 9),
          equals([1, 2]),
        );
      });
      test('f([2,3,4], 6)', () {
        expect(
          f([2, 3, 4], 6),
          equals([1, 3]),
        );
      });
      test('f([-1,0], -1)', () {
        expect(
          f([-1, 0], -1),
          equals([1, 2]),
        );
      });
    });
