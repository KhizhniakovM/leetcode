import 'package:leetcode/array/0392.is_subsequence.dart';
import 'package:test/test.dart';

void main() => group('is_subsequence', () {
      final f1 = SolutionV1().isSubsequence;
      final f2 = SolutionV2().isSubsequence;

      test('f1("abc", "ahbgdc")', () {
        expect(
          f1('abc', 'ahbgdc'),
          equals(true),
        );
      });

      test('f1("axc", "ahbgdc")', () {
        expect(
          f1('axc', 'ahbgdc'),
          equals(false),
        );
      });

      test('f2("abc", "ahbgdc")', () {
        expect(
          f2('abc', 'ahbgdc'),
          equals(true),
        );
      });

      test('f2("axc", "ahbgdc")', () {
        expect(
          f2('axc', 'ahbgdc'),
          equals(false),
        );
      });
    });
