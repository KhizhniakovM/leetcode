import 'package:leetcode/array/0496.next_greater_element_1.dart';
import 'package:test/test.dart';

void main() => group('next_greater_element_1', () {
      final f1 = SolutionV1().nextGreaterElement;
      final f2 = SolutionV2().nextGreaterElement;

      test('f1([4,1,2],[1,3,4,2])', () {
        expect(
          f1([4, 1, 2], [1, 3, 4, 2]),
          equals([-1, 3, -1]),
        );
      });
      test('f1([2,4],[1,2,3,4])', () {
        expect(
          f1([2, 4], [1, 2, 3, 4]),
          equals([3, -1]),
        );
      });
      test('f2([4,1,2],[1,3,4,2])', () {
        expect(
          f2([4, 1, 2], [1, 3, 4, 2]),
          equals([-1, 3, -1]),
        );
      });
      test('f2([2,4],[1,2,3,4])', () {
        expect(
          f2([2, 4], [1, 2, 3, 4]),
          equals([3, -1]),
        );
      });
    });
