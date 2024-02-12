import 'package:leetcode/array/0027.remove_element.dart';
import 'package:test/test.dart';

void main() => group('remove_element', () {
      final f1 = SolutionV1().removeElement;
      final f2 = SolutionV2().removeElement;

      test('f1([3,2,2,3], 3)', () {
        expect(
          f1([3, 2, 2, 3], 3),
          equals(2),
        );
      });

      test('f1([0,1,2,2,3,0,4,2], 2)', () {
        expect(
          f1([0, 1, 2, 2, 3, 0, 4, 2], 2),
          equals(5),
        );
      });

      test('f2([3,2,2,3], 3)', () {
        expect(
          f2([3, 2, 2, 3], 3),
          equals(2),
        );
      });

      test('f2([0,1,2,2,3,0,4,2], 2)', () {
        expect(
          f2([0, 1, 2, 2, 3, 0, 4, 2], 2),
          equals(5),
        );
      });
    });
