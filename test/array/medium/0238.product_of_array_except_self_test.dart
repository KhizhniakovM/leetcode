import 'package:leetcode/array/medium/0238.product_of_array_except_self.dart';
import 'package:test/test.dart';

void main() => group('product_of_array_except_self', () {
      final f1 = SolutionV1().productExceptSelf;
      final f2 = SolutionV2().productExceptSelf;

      test('f1([1,2,3,4])', () {
        expect(
          f1([1, 2, 3, 4]),
          equals([24, 12, 8, 6]),
        );
      });
      test('f1([-1,1,0,-3,3])', () {
        expect(
          f1([-1, 1, 0, -3, 3]),
          equals([0, 0, 9, 0, 0]),
        );
      });
      test('f2([1,2,3,4])', () {
        expect(
          f2([1, 2, 3, 4]),
          equals([24, 12, 8, 6]),
        );
      });
      test('f2([-1,1,0,-3,3])', () {
        expect(
          f2([-1, 1, 0, -3, 3]),
          equals([0, 0, 9, 0, 0]),
        );
      });
    });
