import 'package:leetcode/sliding_window/medium/0658.find_k_closest_elements.dart';
import 'package:test/test.dart';

void main() => group('find_k_closest_elements', () {
      final f = Solution().findClosestElements;

      test('f([1,2,3,4,5], 4, 3)', () {
        expect(
          f([1, 2, 3, 4, 5], 4, 3),
          equals([1, 2, 3, 4]),
        );
      });
      test('f([1,2,3,4,5], 4, -1)', () {
        expect(
          f([1, 2, 3, 4, 5], 4, -1),
          equals([1, 2, 3, 4]),
        );
      });
      test('f([1,1,1,10,10,10], 1, 9)', () {
        expect(
          f([1, 1, 1, 10, 10, 10], 1, 9),
          equals([10]),
        );
      });
    });
