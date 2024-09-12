import 'package:leetcode/sliding_window/medium/0713.subarray_product_less_than_k.dart';
import 'package:test/test.dart';

void main() => group('subarray_product_less_than_k', () {
      final f = Solution().numSubarrayProductLessThanK;

      test('f([10,5,2,6], 100)', () {
        expect(
          f([10, 5, 2, 6], 100),
          equals(8),
        );
      });
      test('f([1,2,3], 0)', () {
        expect(
          f([1, 2, 3], 0),
          equals(0),
        );
      });
    });
