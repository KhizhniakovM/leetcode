import 'package:leetcode/array/2264.largest_3_same_digit_number_in_string.dart';
import 'package:test/test.dart';

void main() => group('largest_3_same_digit_number_in_string', () {
      final f = Solution().largestGoodInteger;

      test('f("6777133339")', () {
        expect(
          f('6777133339'),
          equals('777'),
        );
      });
      test('f("2300019")', () {
        expect(
          f('2300019'),
          equals('000'),
        );
      });
      test('f("42352338")', () {
        expect(
          f('42352338'),
          equals(''),
        );
      });
    });
