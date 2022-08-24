import 'package:leetcode/src/problem/1446.consecutive_characters.dart';
import 'package:test/test.dart';

void main() => group('1446.consecutive characters /', () {
      final func = Solution().maxPower;

      test('func(leetcode)', () {
        expect(func('leetcode'), equals(2));
      });
      test('func(abbcccddddeeeeedcba)', () {
        expect(func('abbcccddddeeeeedcba'), equals(5));
      });
    });
