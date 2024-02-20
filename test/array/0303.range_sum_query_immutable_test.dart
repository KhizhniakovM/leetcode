import 'package:leetcode/array/0303.range_sum_query_immutable.dart';
import 'package:test/test.dart';

void main() => group('range_sum_query_immutable', () {
      test('c', () {
        final c = NumArray([-2, 0, 3, -5, 2, -1]);
        expect(c, isA<NumArray>());
        expect(c.sumRange(0, 2), equals(1));
        expect(c.sumRange(2, 5), equals(-1));
        expect(c.sumRange(0, 5), equals(-3));
      });
    });
