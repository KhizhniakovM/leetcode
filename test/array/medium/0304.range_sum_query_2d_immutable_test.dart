import 'package:leetcode/array/medium/0304.range_sum_query_2d_immutable.dart';
import 'package:test/test.dart';

void main() => group('range_sum_query_2d_immutable', () {
      test('f()', () {
        final m = NumMatrix([
          [3, 0, 1, 4, 2],
          [5, 6, 3, 2, 1],
          [1, 2, 0, 1, 5],
          [4, 1, 0, 1, 7],
          [1, 0, 3, 0, 5]
        ]);
        final f = m.sumRegion;

        expect(
          f(2, 1, 4, 3),
          equals(8),
        );
        expect(
          f(1, 1, 2, 2),
          equals(11),
        );
        expect(
          f(1, 2, 2, 4),
          equals(12),
        );
      });
    });
 