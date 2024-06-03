import 'package:leetcode/array/0869.monotonic_array.dart';
import 'package:test/test.dart';

void main() => group('monotonic_array', () {
      final f = Solution().isMonotonic;

      test('f([1,2,2,3])', () {
        expect(
          f([1, 2, 2, 3]),
          equals(true),
        );
      });
      test('f([6,5,4,4])', () {
        expect(
          f([6, 5, 4, 4]),
          equals(true),
        );
      });
      test('f([1,3,2])', () {
        expect(
          f([1, 3, 2]),
          equals(false),
        );
      });
    });
