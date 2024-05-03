import 'package:leetcode/array/hard/2306.naming_a_company.dart';
import 'package:test/test.dart';

void main() => group('naming_a_company', () {
      final f = Solution().distinctNames;

      test('f(["coffee","donuts","time","toffee"])', () {
        expect(
          f(["coffee", "donuts", "time", "toffee"]),
          equals(6),
        );
      });
      test('f(["lack","back"])', () {
        expect(
          f(["lack", "back"]),
          equals(0),
        );
      });
    });
