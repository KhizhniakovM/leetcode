import 'package:leetcode/binary_search/0704.binary_search.dart';
import 'package:test/test.dart';

void main() => group('binary_search', () {
      final f = Solution().search;

      test('f([-1,0,3,5,9,12], 9)', () {
        expect(
          f([-1, 0, 3, 5, 9, 12], 9),
          equals(4),
        );
      });

      test('f([-1,0,3,5,9,12], 2', () {
        expect(
          f([-1, 0, 3, 5, 9, 12], 2),
          equals(-1),
        );
      });
      test('f([5], 5', () {
        expect(
          f([5], 5),
          equals(0),
        );
      });
    });
