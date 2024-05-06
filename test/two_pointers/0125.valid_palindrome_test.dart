import 'package:leetcode/two_pointers/0125.valid_palindrome.dart';
import 'package:test/test.dart';

void main() => group('valid_palindrome', () {
      final f = Solution().isPalindrome;

      test('f("A man, a plan, a canal: Panama")', () {
        expect(
          f("A man, a plan, a canal: Panama"),
          equals(true),
        );
      });
      test('f("A man, a plan, a canal: Panama")', () {
        expect(
          f("A man, a plan, a canal: Panama"),
          equals(true),
        );
      });
      test('f("race a car")', () {
        expect(
          f("race a car"),
          equals(false),
        );
      });
      test('f(" ")', () {
        expect(
          f(" "),
          equals(true),
        );
      });
    });
