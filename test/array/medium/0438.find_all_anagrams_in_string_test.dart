import 'package:leetcode/array/medium/0438.find_all_anagrams_in_string.dart';
import 'package:test/test.dart';

void main() => group('find_all_anagrams_in_a_string', () {
      final f = Solution().findAnagrams;

      test('f("cbaebabacd", "abc")', () {
        expect(
          f('cbaebabacd', 'abc'),
          equals([0, 6]),
        );
      });
      test('f("abab", "ab")', () {
        expect(
          f('abab', 'ab'),
          equals([0, 1, 2]),
        );
      });
    });
