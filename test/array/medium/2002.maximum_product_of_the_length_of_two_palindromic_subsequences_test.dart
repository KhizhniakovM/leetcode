import 'package:leetcode/array/medium/2002.maximum_product_of_the_length_of_two_palindromic_subsequences.dart';
import 'package:test/test.dart';

void main() =>
    group('maximum_product_of_the_length_of_two_palindromic_subsequences', () {
      final f = Solution().maxProduct;

      test('f("leetcodecom")', () {
        expect(
          f('leetcodecom'),
          equals(9),
        );
      });
      test('f("bb")', () {
        expect(
          f('bb'),
          equals(1),
        );
      });
      test('f("accbcaxxcxx")', () {
        expect(
          f('accbcaxxcxx'),
          equals(25),
        );
      });
    });
