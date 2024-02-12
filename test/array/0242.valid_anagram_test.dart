import 'package:leetcode/array/0242.valid_anagram.dart';
import 'package:test/test.dart';

void main() => group('valid_anagram', () {
      final f = Solution().isAnagram;

      test('f("anagram","nagaram")', () {
        expect(
          f("anagram", "nagaram"),
          equals(true),
        );
      });

      test('f("rat", "car")', () {
        expect(
          f("rat", "car"),
          equals(false),
        );
      });
    });
