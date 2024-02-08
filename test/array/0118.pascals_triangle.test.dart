import 'package:leetcode/array/0118.pascals_triangle.dart';
import 'package:test/test.dart';

void main() => group('pascals_triangle', () {
      final f = Solution().generate;

      test('f(5)', () {
        expect(
          f(5),
          equals([[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]),
        );
      });
      test('f(1)', () {
        expect(
          f(1),
          equals([[1]]),
        );
      });
      test('f(10)', () {
        expect(
          f(10),
          equals([[1]]),
        );
      });
    });