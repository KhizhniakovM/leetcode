import 'package:leetcode/sliding_window/medium/0209.minimum_size_subarray_sum.dart';
import 'package:test/test.dart';

void main() => group('minimum_size_subarray_sum', () {
      final f = Solution().minSubArrayLen;

      test('f(7, [2,3,1,2,4,3])', () {
        expect(
          f(7, [2, 3, 1, 2, 4, 3]),
          equals(2),
        );
      });
      test('f(4, [1,4,4])', () {
        expect(
          f(4, [1, 4, 4]),
          equals(1),
        );
      });
      test('f(11, [1,1,1,1,1,1,1,1])', () {
        expect(
          f(11, [1, 1, 1, 1, 1, 1, 1, 1]),
          equals(0),
        );
      });
    });
