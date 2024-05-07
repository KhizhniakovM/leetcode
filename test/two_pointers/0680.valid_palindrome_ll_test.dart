import 'package:leetcode/two_pointers/0680.valid_palindrome_ll.dart';
import 'package:test/test.dart';

void main() => group('valid_palindrome_ll', () {
      final f = Solution().validPalindrome;

      test('f("aba")', () {
        expect(
          f('aba'),
          equals(true),
        );
      });
      test('f("abca")', () {
        expect(
          f('abca'),
          equals(true),
        );
      });
      test('f("abc")', () {
        expect(
          f('abc'),
          equals(false),
        );
      });
      test(
          'f("aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga")',
          () {
        expect(
          f('aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga'),
          equals(true),
        );
      });
    });
