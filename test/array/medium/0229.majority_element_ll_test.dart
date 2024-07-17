import 'package:leetcode/array/medium/0229.majority_element_ll.dart';
import 'package:test/test.dart';

void main() => group('majority_element_ll', () {
      final f1 = SolutionV1().majorityElement;
      final f2 = SolutionV2().majorityElement;

      test('f1([3,2,3])', () {
        expect(
          f1([3, 2, 3]),
          equals([3]),
        );
      });
      test('f1([1])', () {
        expect(
          f1([1]),
          equals([1]),
        );
      });
      test('f1([1,2])', () {
        expect(
          f1([1, 2]),
          equals([1, 2]),
        );
      });

      test('f2([3,2,3])', () {
        expect(
          f2([3, 2, 3]),
          equals([3]),
        );
      });
      test('f2([1])', () {
        expect(
          f2([1]),
          equals([1]),
        );
      });
      test('f2([1,2])', () {
        expect(
          f2([1, 2]),
          equals([1, 2]),
        );
      });
    });
