import 'package:leetcode/array/medium/0049.group_anagrams.dart';
import 'package:test/test.dart';

void main() => group('froup_anagrams', () {
      final f = Solution().groupAnagrams;

      test('f(["eat","tea","tan","ate","nat","bat"])', () {
        expect(
          f(["eat", "tea", "tan", "ate", "nat", "bat"]),
          equals([
            ["ate", "eat", "tea"],
            ["nat", "tan"],
            ["bat"],
          ]),
        );
      });
      test('f([""])', () {
        expect(
          f([""]),
          equals([
            [""]
          ]),
        );
      });
      test('f(["a"])', () {
        expect(
          f(["a"]),
          equals([
            ["a"]
          ]),
        );
      });
    });
