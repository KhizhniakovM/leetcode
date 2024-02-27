import 'package:leetcode/array/1822.sign_of_the_product_of_an_array.dart';
import 'package:test/test.dart';

void main() => group('sign_of_the_product_of_an_array', () {
      final f = Solution().arraySign;

      test('f([-1,-2,-3,-4,3,2,1])', () {
        expect(
          f([-1, -2, -3, -4, 3, 2, 1]),
          equals(1),
        );
      });
      test('f([1,5,0,2,-3])', () {
        expect(
          f([1, 5, 0, 2, -3]),
          equals(0),
        );
      });
      test('f([-1,1,-1,1,-1])', () {
        expect(
          f([-1, 1, -1, 1, -1]),
          equals(-1),
        );
      });
      test('f([9,72,34,29,-49,-22,-77,-17,-66,-75,-44,-30,-24])', () {
        expect(
          f([9,72,34,29,-49,-22,-77,-17,-66,-75,-44,-30,-24]),
          equals(-1),
        );
      });
    });
