import 'package:leetcode/array/0448.find_all_numbers_dissapeared_in_array.dart';
import 'package:test/test.dart';

void main() => group('find_all_numbers_dissapeared_in_array', () {
      final f = Solution().findDisappearedNumbers;

      test('f([4,3,2,7,8,2,3,1])', () {
        expect(
          f([4, 3, 2, 7, 8, 2, 3, 1]),
          equals([5, 6]),
        );
      });
      test('f([1,1])', () {
        expect(
          f([1, 1]),
          equals([2]),
        );
      });
    });
