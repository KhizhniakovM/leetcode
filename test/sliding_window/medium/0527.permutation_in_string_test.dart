import 'package:leetcode/sliding_window/medium/0527.permutation_in_string.dart';
import 'package:test/test.dart';

void main() => group('permutation_in_string', () {
      final f1 = SolutionV1().checkInclusion;
      final f2 = SolutionV2().checkInclusion;

      test('f1("ab", "eidbaooo")', () {
        expect(
          f1("ab", "eidbaooo"),
          equals(true),
        );
      });
      test('f1("ab", "eidboaoo")', () {
        expect(
          f1("ab", "eidboaoo"),
          equals(false),
        );
      });
      test('f1("abcdxabcde", "abcdeabcdx")', () {
        expect(
          f1("abcdxabcde", "abcdeabcdx"),
          equals(true),
        );
      });
      test('f2("ab", "eidbaooo")', () {
        expect(
          f2("ab", "eidbaooo"),
          equals(true),
        );
      });
      test('f2("ab", "eidboaoo")', () {
        expect(
          f2("ab", "eidboaoo"),
          equals(false),
        );
      });
      test('f2("abcdxabcde", "abcdeabcdx")', () {
        expect(
          f2("abcdxabcde", "abcdeabcdx"),
          equals(true),
        );
      });
    });
