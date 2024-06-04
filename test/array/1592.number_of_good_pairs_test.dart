import 'package:leetcode/array/1592.number_of_good_pairs.dart';
import 'package:test/test.dart';

void main() => group('number_of_good_pairs', () {
      final f = Solution().numIdenticalPairs;

      test('f([1,2,3,1,1,3])', () {
        expect(
          f([1, 2, 3, 1, 1, 3]),
          equals(4),
        );
      });
      test('f([1,1,1,1])', () {
        expect(
          f([1, 1, 1, 1]),
          equals(6),
        );
      });
      test('f([1,2,3])', () {
        expect(
          f([1, 2, 3]),
          equals(0),
        );
      });
    });
