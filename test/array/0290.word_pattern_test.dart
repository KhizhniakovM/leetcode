import 'package:leetcode/array/0290.word_pattern.dart';
import 'package:test/test.dart';

void main() => group('word_pattern', () {
      final f = Solution().wordPattern;

      test('f("abba", "dog cat cat dog")', () {
        expect(
          f('abba', 'dog cat cat dog'),
          equals(true),
        );
      });
      test('f("abba", "dog cat cat fish")', () {
        expect(
          f('abba', 'dog cat cat fish'),
          equals(false),
        );
      });
      test('f("aaaa", "dog cat cat dog")', () {
        expect(
          f('aaaa', 'dog cat cat dog'),
          equals(false),
        );
      });
    });
