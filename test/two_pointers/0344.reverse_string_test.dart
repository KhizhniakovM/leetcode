import 'package:leetcode/two_pointers/0344.reverse_string.dart';
import 'package:test/test.dart';

void main() => group('reverse_string', () {
      final f = Solution().reverseString;

      test('f(["h","e","l","l","o"])', () {
        final s = ["h", "e", "l", "l", "o"];
        f(s);
        expect(
          s,
          equals(["o", "l", "l", "e", "h"]),
        );
      });

      test('f(["H","a","n","n","a","h"])', () {
        final s = ["H", "a", "n", "n", "a", "h"];
        f(s);
        expect(
          s,
          equals(["h", "a", "n", "n", "a", "H"]),
        );
      });
    });
