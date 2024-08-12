import 'package:leetcode/stack/1544.make_the_string_great.dart';
import 'package:test/test.dart';

void main() => group('make_the_string_great', () {
      final f = Solution().makeGood;

      test('f("leEeetcode")', () {
        expect(
          f('leEeetcode'),
          equals('leetcode'),
        );
      });
      test('f("abBAcC")', () {
        expect(
          f('abBAcC'),
          equals(''),
        );
      });
      test('f("s")', () {
        expect(
          f('s'),
          equals('s'),
        );
      });
      test('f("kkdsFuqUfSDKK")', () {
        expect(
          f('kkdsFuqUfSDKK'),
          equals('kkdsFuqUfSDKK'),
        );
      });
    });
