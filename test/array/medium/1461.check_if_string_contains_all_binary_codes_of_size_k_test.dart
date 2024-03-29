import 'package:leetcode/array/medium/1461.check_if_string_contains_all_binary_codes_of_size_k.dart';
import 'package:test/test.dart';

void main() => group('check_if_string_contains_all_binary_codes_of_size_k', () {
      final f = Solution().hasAllCodes;

      test('f("00110110", 2)', () {
        expect(
          f('00110110', 2),
          equals(true),
        );
      });
      test('f("0110", 1)', () {
        expect(
          f('0110', 1),
          equals(true),
        );
      });
      test('f("0110", 2)', () {
        expect(
          f('0110', 2),
          equals(false),
        );
      });
    });
