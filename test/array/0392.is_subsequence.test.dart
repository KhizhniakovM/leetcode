import 'package:leetcode/array/0392.is_subsequence.dart';
import 'package:test/test.dart';

void main() => group('is_subsequence', () {
      final f = Solution().isSubsequence;

      test('f("abc", "ahbgdc")', () {
        expect(
          f('abc', 'ahbgdc'),
          equals(true),
        );
      });

      test('f("axc", "ahbgdc")', () {
        expect(
          f('axc', 'ahbgdc'),
          equals(false),
        );
      });
    });
