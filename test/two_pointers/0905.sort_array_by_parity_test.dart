import 'package:leetcode/two_pointers/0905.sort_array_by_parity.dart';
import 'package:test/test.dart';

void main() => group('sort_array_by_parity', () {
      final f = Solution().sortArrayByParity;

      test('f([3,1,2,4])', () {
        expect(
          f([3, 1, 2, 4]),
          equals(unorderedEquals([2, 4, 3, 1])),
        );
      });
      test('f([0])', () {
        expect(
          f([0]),
          equals([0]),
        );
      });
    });
