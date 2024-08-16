import 'package:leetcode/sliding_window/medium/0904.fruit_into_baskets.dart';
import 'package:test/test.dart';

void main() => group('fruit_into_baskets', () {
      final f = Solution().totalFruit;

      test('f([1,2,1])', () {
        expect(
          f([1, 2, 1]),
          equals(3),
        );
      });
      test('f([0,1,2,2])', () {
        expect(
          f([0, 1, 2, 2]),
          equals(3),
        );
      });
      test('f([1,2,3,2,2])', () {
        expect(
          f([1, 2, 3, 2, 2]),
          equals(4),
        );
      });
    });
