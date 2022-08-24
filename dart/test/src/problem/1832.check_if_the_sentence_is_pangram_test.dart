import 'package:leetcode/src/problem/1832.check_if_the_sentence_is_pangram.dart';
import 'package:test/test.dart';

void main() => group('1832.check if the sentence is pangram /', () {
      final func = Solution().checkIfPangram;

      test('func(thequickbrownfoxjumpsoverthelazydog)', () {
        expect(func('thequickbrownfoxjumpsoverthelazydog'), equals(true));
      });
      test('func(leetcode)', () {
        expect(func('leetcode'), equals(false));
      });
    });
