import 'package:leetcode/stack/medium/0735.asteroid_collision.dart';
import 'package:test/test.dart';

void main() => group('asteroid_collision', () {
      final f = Solution().asteroidCollision;

      test('f([5,10,-5])', () {
        expect(
          f([5, 10, -5]),
          equals([5, 10]),
        );
      });
      test('f([8,-8])', () {
        expect(
          f([8, -8]),
          equals([]),
        );
      });
      test('f([10,2,-5])', () {
        expect(
          f([10, 2, -5]),
          equals([10]),
        );
      });
      test('f([-2,-1,1,2])', () {
        expect(
          f([-2, -1, 1, 2]),
          equals([-2, -1, 1, 2]),
        );
      });
    });
