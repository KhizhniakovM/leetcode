import 'package:leetcode/array/medium/0665.non_decreasing_array.dart';
import 'package:test/test.dart';

void main() => group('non_decreasing_array', () {
      final f = Solution().checkPossibility;

      test('f([4,2,3])', () {
        expect(
          f([4, 2, 3]),
          equals(true),
        );
      });
      test('f([4,2,1])', () {
        expect(
          f([4, 2, 1]),
          equals(false),
        );
      });
      test('f([3,4,2,3])', () {
        expect(
          f([3, 4, 2, 3]),
          equals(false),
        );
      });
    });
