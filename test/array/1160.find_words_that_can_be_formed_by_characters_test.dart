import 'package:leetcode/array/1160.find_words_that_can_be_formed_by_characters.dart';
import 'package:test/test.dart';

void main() => group('find_words_that_can_be_formed_by_characters', () {
      final f = Solution().countCharacters;

      test('f(["cat","bt","hat","tree"], "atach")', () {
        expect(
          f(["cat", "bt", "hat", "tree"], "atach"),
          equals(6),
        );
      });
      test('f(["hello","world","leetcode"], "welldonehoneyr")', () {
        expect(
          f(["hello", "world", "leetcode"], "welldonehoneyr"),
          equals(10),
        );
      });
    });
