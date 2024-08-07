import 'package:leetcode/stack/0020.valid_parenthesis.dart';
import 'package:test/test.dart';

void main() => group('valid_parenthesis', () {
      final f = Solution().isValid;

      test('f("()")', () {
        expect(
          f("()"),
          equals(true),
        );
      });
      test('f("()[]{}")', () {
        expect(
          f("()[]{}"),
          equals(true),
        );
      });
      test('f("(]")', () {
        expect(
          f("(]"),
          equals(false),
        );
      });
      test('f("]")', () {
        expect(
          f("]"),
          equals(false),
        );
      });
    });
