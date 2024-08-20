import 'package:leetcode/sliding_window/medium/0930.binary_subarrays_with_sum.dart';
import 'package:test/test.dart';

void main() => group('binary_subarrays_with_sum', () {
      final f1 = SolutionV1().numSubarraysWithSum;
      final f2 = SolutionV2().numSubarraysWithSum;

      test('f1([1,0,1,0,1], 2)', () {
        expect(
          f1([1, 0, 1, 0, 1], 2),
          equals(4),
        );
      });
      test('f1([0,0,0,0,0], 0)', () {
        expect(
          f1([0, 0, 0, 0, 0], 0),
          equals(15),
        );
      });
      test('f2([1,0,1,0,1], 2)', () {
        expect(
          f2([1, 0, 1, 0, 1], 2),
          equals(4),
        );
      });
      test('f2([0,0,0,0,0], 0)', () {
        expect(
          f2([0, 0, 0, 0, 0], 0),
          equals(15),
        );
      });
    });
