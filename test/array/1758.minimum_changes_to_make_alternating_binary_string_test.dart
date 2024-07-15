import 'package:leetcode/array/1758.minimum_changes_to_make_alternating_binary_string.dart';
import 'package:test/test.dart';

void main() => group('minimum_changes_to_make_alternating_binary_string', () {
      final f = Solution().minOperations;

      test('f("0100")', () {
        expect(
          f('0100'),
          equals(1),
        );
      });
      test('f("10")', () {
        expect(
          f('10'),
          equals(0),
        );
      });
      test('f("1111")', () {
        expect(
          f('1111'),
          equals(2),
        );
      });
      test('f("10010100")', () {
        expect(
          f('10010100'),
          equals(3),
        );
      });
    });
