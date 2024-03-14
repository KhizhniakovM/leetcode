import 'package:leetcode/array/medium/1930.unique_length3_palindromic_subsequences.dart';
import 'package:test/test.dart';

void main() => group('unique_length_3_palindromic_subsequences', () {
      final f = Solution().countPalindromicSubsequence;

      test('f("aabca")', () {
        expect(
          f('aabca'),
          equals(3),
        );
      });
      test('f("adc")', () {
        expect(
          f('adc'),
          equals(0),
        );
      });
      test('f("bbcbaba")', () {
        expect(
          f('bbcbaba'),
          equals(4),
        );
      });
    });
