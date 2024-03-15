import 'package:leetcode/array/medium/1963.minimum_number_of_swaps_to_make_string_balanced.dart';
import 'package:test/test.dart';

void main() => group('minimum_number_of_swaps_to_make_string_balanced', () {
      final f = Solution().minSwaps;

      test('f("][][")', () {
        expect(
          f('][]['),
          equals(1),
        );
      });

      test('f("]]][[[")', () {
        expect(
          f(']]][[['),
          equals(2),
        );
      });

      test('f("[]")', () {
        expect(
          f('[]'),
          equals(0),
        );
      });
    });
