import 'package:leetcode/array/medium/0179.largest_number.dart';
import 'package:test/test.dart';

void main() => group('largest_number', () {
      final f = Solution().largestNumber;

      test('f([10, 2])', () {
        expect(
          f([10, 2]),
          equals('210'),
        );
      });
      test('f([3,30,34,5,9])', () {
        expect(
          f([3, 30, 34, 5, 9]),
          equals('9534330'),
        );
      });
    });
