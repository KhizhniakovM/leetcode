import 'package:leetcode/array/0645.set_mismatch.dart';
import 'package:test/test.dart';

void main() => group('set_mismatch', () {
      final f = Solution().findErrorNums;

      test('f([1,2,2,4])', () {
        expect(
          f([1, 2, 2, 4]),
          equals([2, 3]),
        );
      });
      test('f([1,1])', () {
        expect(
          f([1, 1]),
          equals([1, 2]),
        );
      });
      test('f([2,2])', () {
        expect(
          f([2, 2]),
          equals([2, 1]),
        );
      });
      test('f([3,2,3,4,6,5])', () {
        expect(
          f([3, 2, 3, 4, 6, 5]),
          equals([3, 1]),
        );
      });
    });
