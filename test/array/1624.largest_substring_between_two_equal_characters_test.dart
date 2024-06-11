import 'package:leetcode/array/1624.largest_substring_between_two_equal_characters.dart';
import 'package:test/test.dart';

void main() => group('largest_substring_between_two_equal_characters', () {
      final f = Solution().maxLengthBetweenEqualCharacters;

      test('f("aa")', () {
        expect(
          f('aa'),
          equals(0),
        );
      });
      test('f("abca")', () {
        expect(
          f('abca'),
          equals(2),
        );
      });
      test('f("cbzxy")', () {
        expect(
          f('cbzxy'),
          equals(-1),
        );
      });
    });
