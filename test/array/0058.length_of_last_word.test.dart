import 'package:leetcode/array/0058.length_of_last_word.dart';
import 'package:test/test.dart';

void main() => group('length_of_last_word', () {
      final f = Solution().lengthOfLastWord;

      test('f("Hello World")', () {
        expect(
          f('Hello World'),
          equals(5),
        );
      });
      test('f("   fly me   to   the moon  ")', () {
        expect(
          f('   fly me   to   the moon  '),
          equals(4),
        );
      });
      test('f("luffy is still joyboy")', () {
        expect(
          f('luffy is still joyboy'),
          equals(6),
        );
      });
    });
