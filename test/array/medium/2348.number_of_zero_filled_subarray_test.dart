import 'package:leetcode/array/medium/2348.number_of_zero_filled_subarray.dart';
import 'package:test/test.dart';

void main() => group('number_of_zero_filled_subarrays', () {
      final f = Solution().zeroFilledSubarray;

      test('f([1,3,0,0,2,0,0,4])', () {
        expect(
          f([1, 3, 0, 0, 2, 0, 0, 4]),
          equals(6),
        );
      });
      test('f([0,0,0,2,0,0])', () {
        expect(
          f([0, 0, 0, 2, 0, 0]),
          equals(9),
        );
      });
      test('f([2,10,2019])', () {
        expect(
          f([2, 10, 2019]),
          equals(0),
        );
      });
    });
