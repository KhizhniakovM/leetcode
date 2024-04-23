import 'package:leetcode/array/medium/2483.minimum_penalty_for_a_shop.dart';
import 'package:test/test.dart';

void main() => group('minimum_penalty_for_a_shop', () {
      final f = Solution().bestClosingTime;

      test('f("YYNY")', () {
        expect(
          f('YYNY'),
          equals(2),
        );
      });
      test('f("NNNNN")', () {
        expect(
          f('NNNNN'),
          equals(0),
        );
      });
      test('f("YYYY")', () {
        expect(
          f('YYYY'),
          equals(4),
        );
      });
    });
