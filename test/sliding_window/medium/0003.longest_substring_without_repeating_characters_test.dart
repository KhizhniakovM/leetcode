import 'package:leetcode/sliding_window/medium/0003.longest_substring_without_repeating_characters.dart';
import 'package:test/test.dart';

void main() => group('longest_substring_without_repeating_characters', () {
      final f = Solution().lengthOfLongestSubstring;

      test('f("abcabcbb")', () {
        expect(
          f('abcabcbb'),
          equals(3),
        );
      });
      test('f("bbbbb")', () {
        expect(
          f('bbbbb'),
          equals(1),
        );
      });
      test('f("pwwkew")', () {
        expect(
          f('pwwkew'),
          equals(3),
        );
      });
    });
