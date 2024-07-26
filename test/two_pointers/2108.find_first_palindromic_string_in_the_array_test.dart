import 'package:leetcode/two_pointers/2108.find_first_palindromic_string_in_the_array.dart';
import 'package:test/test.dart';

void main() => group('find_first_palindromic_string_in_the_array', () {
      final f = Solution().firstPalindrome;

      test('f(["abc","car","ada","racecar","cool"])', () {
        expect(
          f(["abc", "car", "ada", "racecar", "cool"]),
          equals('ada'),
        );
      });
      test('f(["notapalindrome","racecar"])', () {
        expect(
          f(["notapalindrome", "racecar"]),
          equals('racecar'),
        );
      });
      test('f(["def","ghi"])', () {
        expect(
          f(["def", "ghi"]),
          equals(''),
        );
      });
    });
