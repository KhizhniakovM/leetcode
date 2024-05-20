import 'package:leetcode/two_pointers/0088.merge_sorted_array.dart';
import 'package:test/test.dart';

void main() => group('merge_sorted_array', () {
      final f1 = SolutionV1().merge;
      final f2 = SolutionV2().merge;

      test('f1([1,2,3,0,0,0], 3, [2,5,6], 3)', () {
        final s = [1, 2, 3, 0, 0, 0];
        f1(s, 3, [2, 5, 6], 3);
        expect(
          s,
          equals([1, 2, 2, 3, 5, 6]),
        );
      });
      test('f1([1], 1, [0], 0)', () {
        final s = [1];
        f1(s, 1, [0], 0);
        expect(
          s,
          equals([1]),
        );
      });
      test('f1([0], 0, [1], 1)', () {
        final s = [0];
        f1(s, 0, [1], 1);
        expect(
          s,
          equals([1]),
        );
      });
      test('f1([-1,0,0,3,3,3,0,0,0], 6, [1,2,2], 3)', () {
        final s = [-1, 0, 0, 3, 3, 3, 0, 0, 0];
        f1(s, 6, [1, 2, 2], 3);
        expect(
          s,
          equals([-1, 0, 0, 1, 2, 2, 3, 3, 3]),
        );
      });

      test('f2([1,2,3,0,0,0], 3, [2,5,6], 3)', () {
        final s = [1, 2, 3, 0, 0, 0];
        f2(s, 3, [2, 5, 6], 3);
        expect(
          s,
          equals([1, 2, 2, 3, 5, 6]),
        );
      });
      test('f2([1], 1, [0], 0)', () {
        final s = [1];
        f2(s, 1, [0], 0);
        expect(
          s,
          equals([1]),
        );
      });
      test('f2([0], 0, [1], 1)', () {
        final s = [0];
        f2(s, 0, [1], 1);
        expect(
          s,
          equals([1]),
        );
      });
      test('f2([-1,0,0,3,3,3,0,0,0], 6, [1,2,2], 3)', () {
        final s = [-1, 0, 0, 3, 3, 3, 0, 0, 0];
        f2(s, 6, [1, 2, 2], 3);
        expect(
          s,
          equals([-1, 0, 0, 1, 2, 2, 3, 3, 3]),
        );
      });
    });
