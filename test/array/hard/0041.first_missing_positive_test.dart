import 'package:leetcode/array/hard/0041.first_missing_positive.dart';
import 'package:test/test.dart';

void main() => group('first_missing_positive', () {
      final f = Solution().firstMissingPositive;

      test('f([1,2,0])', () {
        expect(
          f([1, 2, 0]),
          equals(3),
        );
      });
      test('f([3,4,-1,1])', () {
        expect(
          f([3, 4, -1, 1]),
          equals(2),
        );
      });
      test('f([7,8,9,11,12])', () {
        expect(
          f([7, 8, 9, 11, 12]),
          equals(1),
        );
      });
      test('f([-5])', () {
        expect(
          f([-5]),
          equals(1),
        );
      });
    });
