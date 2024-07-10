import 'package:leetcode/array/0387.first_unique_character_in_a_string.dart';
import 'package:test/test.dart';

void main() => group('first_unique_in_a_string', () {
      final f = Solution().firstUniqChar;

      test('f("leetcode")', () {
        expect(
          f('leetcode'),
          equals(0),
        );
      });
      test('f("loveleetcode")', () {
        expect(
          f('loveleetcode'),
          equals(2),
        );
      });
      test('f("aabb")', () {
        expect(
          f('aabb'),
          equals(-1),
        );
      });
    });
