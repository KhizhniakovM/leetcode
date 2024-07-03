import 'package:leetcode/array/0349.intersection_of_two_arrays.dart';
import 'package:test/test.dart';

void main() => group('intersection_of_two_arrays', () {
      final f = Solution().intersection;

      test('f([1,2,2,1], [2,2])', () {
        expect(
          f([1, 2, 2, 1], [2, 2]),
          equals([2]),
        );
      });
      test('f([4,9,5], [9,4,9,8,4])', () {
        expect(
          f([4, 9, 5], [9, 4, 9, 8, 4]),
          unorderedEquals([9, 4]),
        );
      });
    });
