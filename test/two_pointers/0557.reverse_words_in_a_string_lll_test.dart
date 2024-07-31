import 'package:leetcode/two_pointers/0557.reverse_words_in_a_string_lll.dart';
import 'package:test/test.dart';

void main() => group('reverse_words_in_a_string_lll', () {
      final f1 = SolutionV1().reverseWords;
      final f2 = SolutionV2().reverseWords;

      test('f1("Let\'s take LeetCode contest")', () {
        expect(
          f1("Let's take LeetCode contest"),
          equals("s'teL ekat edoCteeL tsetnoc"),
        );
      });
      test('f1("Mr Ding")', () {
        expect(
          f1("Mr Ding"),
          equals("rM gniD"),
        );
      });
      test('f2("Let\'s take LeetCode contest")', () {
        expect(
          f2("Let's take LeetCode contest"),
          equals("s'teL ekat edoCteeL tsetnoc"),
        );
      });
      test('f2("Mr Ding")', () {
        expect(
          f2("Mr Ding"),
          equals("rM gniD"),
        );
      });
    });
