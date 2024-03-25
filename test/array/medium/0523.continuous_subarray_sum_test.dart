import 'package:leetcode/array/medium/0523.continuous_subarray_sum.dart';
import 'package:test/test.dart';

void main() => group('continuous_subarray_sum', () {
      final f = Solution().checkSubarraySum;

      test('f([23,2,4,6,7], 6)', () {
        expect(
          f([23, 2, 4, 6, 7], 6),
          equals(true),
        );
      });
      test('f([23,2,6,4,7], 6)', () {
        expect(
          f([23, 2, 6, 4, 7], 6),
          equals(true),
        );
      });
      test('f([23,2,6,4,7], 13)', () {
        expect(
          f([23, 2, 6, 4, 7], 13),
          equals(false),
        );
      });
      test('f([0,0], 1)', () {
        expect(
          f([0, 0], 1),
          equals(true),
        );
      });
    });
