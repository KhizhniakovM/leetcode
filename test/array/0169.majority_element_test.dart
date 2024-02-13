import 'package:leetcode/array/0169.majority_element.dart';
import 'package:test/test.dart';

void main() => group('majority_element', () {
      final f1 = SolutionV1().majorityElement;
      final f2 = SolutionV2().majorityElement;

      test('f1([3,2,3])', () {
        expect(
          f1([3, 2, 3]),
          equals(3),
        );
      });
      test('f1([2,2,1,1,1,2,2])', () {
        expect(
          f1([2, 2, 1, 1, 1, 2, 2]),
          equals(2),
        );
      });

      test('f2([3,2,3])', () {
        expect(
          f2([3, 2, 3]),
          equals(3),
        );
      });
      test('f2([2,2,1,1,1,2,2])', () {
        expect(
          f2([2, 2, 1, 1, 1, 2, 2]),
          equals(2),
        );
      });
    });
