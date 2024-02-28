import 'package:leetcode/array/2215.find_the_difference_of_two_arrays.dart';
import 'package:test/test.dart';

void main() => group('find_the_difference_of_two_arrays', () {
      final f = Solution().findDifference;

      test('f([1,2,3], [2,4,6])', () {
        expect(
          f([1, 2, 3], [2, 4, 6]),
          equals([
            [1, 3],
            [4, 6]
          ]),
        );
      });
      test('f([1,2,3,3], [1,1,2,2])', () {
        expect(
          f([1, 2, 3, 3], [1, 1, 2, 2]),
          equals([
            [3],
            []
          ]),
        );
      });
    });
