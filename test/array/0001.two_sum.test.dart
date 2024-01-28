import 'package:leetcode/array/0001.two_sum.dart';
import 'package:test/test.dart';

void main() => group('two_sum', () {
      final f1 = SolutionV1().twoSum;

      test('f1([2, 7, 11, 15], 9)', () {
        expect(
          f1([2, 7, 11, 15], 9),
          equals([0, 1]),
        );
      });

      test('f1([3, 2, 4], 6)', () {
        expect(
          f1([3, 2, 4], 6),
          equals([1, 2]),
        );
      });

      test('f1([3, 3], 6)', () {
        expect(
          f1([3, 3], 6),
          equals([0, 1]),
        );
      });
    });
