import 'package:leetcode/array/0724.find_pivot_index.dart';
import 'package:test/test.dart';

void main() => group('find_pivot_index', () {
      final f = Solution().pivotIndex;

      test('f([1,7,3,6,5,6])', () {
        expect(
          f([1, 7, 3, 6, 5, 6]),
          equals(3),
        );
      });
      test('f([1,2,3])', () {
        expect(
          f([1, 2, 3]),
          equals(-1),
        );
      });
      test('f([2,1,-1])', () {
        expect(
          f([2, 1, -1]),
          equals(0),
        );
      });
    });
