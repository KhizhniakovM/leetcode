import 'package:leetcode/array/medium/0799.champagne_tower.dart';
import 'package:test/test.dart';

void main() => group('champagne_tower', () {
      final f = Solution().champagneTower;

      test('f(1, 1, 1)', () {
        expect(
          f(1, 1, 1),
          equals(0),
        );
      });
      test('f(2, 1, 1)', () {
        expect(
          f(2, 1, 1),
          equals(0.5),
        );
      });
      test('f(100000009, 33, 17)', () {
        expect(
          f(100000009, 33, 17),
          equals(1),
        );
      });
      test('f(0, 0, 0)', () {
        expect(
          f(0, 0, 0),
          equals(0),
        );
      });
      test('f(25, 6, 1)', () {
        expect(
          f(25, 6, 1),
          equals(0.18750),
        );
      });
    });
