import 'package:leetcode/array/medium/0560.subarray_sum_equals_k.dart';
import 'package:test/test.dart';

void main() => group('subarray_sum_equals_k', () {
      final f1 = SolutionV1().subarraySum;
      final f2 = SolutionV2().subarraySum;

      test('f1([1,1,1], 2)', () {
        expect(
          f1([1, 1, 1], 2),
          equals(2),
        );
      });
      test('f1([1,2,3], 3)', () {
        expect(
          f1([1, 2, 3], 3),
          equals(2),
        );
      });
      test('f1([1], 0)', () {
        expect(
          f1([1], 0),
          equals(0),
        );
      });
      test('f1([1, -1, 0], 0)', () {
        expect(
          f1([1, -1, 0], 0),
          equals(3),
        );
      });
      test('f2([1,1,1], 2)', () {
        expect(
          f2([1, 1, 1], 2),
          equals(2),
        );
      });
      test('f2([1,2,3], 3)', () {
        expect(
          f2([1, 2, 3], 3),
          equals(2),
        );
      });
      test('f2([1], 0)', () {
        expect(
          f2([1], 0),
          equals(0),
        );
      });
      test('f2([1, -1, 0], 0)', () {
        expect(
          f2([1, -1, 0], 0),
          equals(3),
        );
      });
    });
