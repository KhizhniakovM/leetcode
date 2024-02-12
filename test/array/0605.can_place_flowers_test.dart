import 'package:leetcode/array/0605.can_place_flowers.dart';
import 'package:test/test.dart';

void main() => group('can_place_flowers', () {
      final f = Solution().canPlaceFlowers;

      test('f([1,0,0,0,1], 1)', () {
        expect(
          f([1, 0, 0, 0, 1], 1),
          equals(true),
        );
      });
      test('f([1,0,0,0,1], 1)', () {
        expect(
          f([1, 0, 0, 0, 1], 2),
          equals(false),
        );
      });
      test('f([1,0,0,0,1,0,0], 2)', () {
        expect(
          f([1, 0, 0, 0, 1, 0, 0], 2),
          equals(true),
        );
      });
      test('f([0], 1)', () {
        expect(
          f([0], 1),
          equals(true),
        );
      });
      test('f([0,1,0], 1)', () {
        expect(
          f([0, 1, 0], 1),
          equals(false),
        );
      });
    });
