import 'package:leetcode/two_pointers/1984.minimum_difference_between_highest_and_lowest_of_k_scores.dart';
import 'package:test/test.dart';

void main() =>
    group('minimum_difference_between_highest_and_lowest_of_k_scores', () {
      final f = Solution().minimumDifference;

      test('f([90], 1)', () {
        expect(
          f([90], 1),
          equals(0),
        );
      });
      test('f([9,4,1,7], 2)', () {
        expect(
          f([9, 4, 1, 7], 2),
          equals(2),
        );
      });
    });
