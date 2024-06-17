import 'package:leetcode/array/0119.pascals_triangle_ll.dart';
import 'package:test/test.dart';

void main() => group('pascals_triangle_ll', () {
      final f = Solution().getRow;

      test('f(3)', () {
        expect(
          f(3),
          equals([1, 3, 3, 1]),
        );
      });
      test('f(0)', () {
        expect(
          f(0),
          equals([1]),
        );
      });
      test('f(1)', () {
        expect(
          f(1),
          equals([1, 1]),
        );
      });
    });
