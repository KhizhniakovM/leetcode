import 'package:leetcode/two_pointers/1768.merge_strings_alternately.dart';
import 'package:test/test.dart';

void main() => group('merge_strings_alternately', () {
      final f = Solution().mergeAlternately;

      test('f("abc", "pqr")', () {
        expect(
          f("abc", "pqr"),
          equals('apbqcr'),
        );
      });
      test('f("ab", "pqrs")', () {
        expect(
          f("ab", "pqrs"),
          equals('apbqrs'),
        );
      });
      test('f("abcd", "pq")', () {
        expect(
          f("abcd", "pq"),
          equals('apbqcd'),
        );
      });
    });
