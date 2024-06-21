import 'package:leetcode/array/1422.maximum_score_after_splitting_a_string.dart';
import 'package:test/test.dart';

void main() => group('', () {
      final f = Solution().maxScore;

      test('f("011101")', () {
        expect(
          f('011101'),
          equals(5),
        );
      });
      test('f("00111")', () {
        expect(
          f('00111'),
          equals(5),
        );
      });
      test('f("1111")', () {
        expect(
          f('1111'),
          equals(3),
        );
      });
    });
