import 'package:leetcode/array/1299.replace_elements_with_greatest_element_on_right_side.dart';
import 'package:test/test.dart';

void main() =>
    group('replace_elements_with_greatest_element_on_right_side', () {
      final f = Solution().replaceElements;

      test('f([17,18,5,4,6,1])', () {
        expect(
          f([17, 18, 5, 4, 6, 1]),
          equals([18, 6, 6, 6, 1, -1]),
        );
      });

      test('f([400])', () {
        expect(
          f([400]),
          equals([-1]),
        );
      });
    });
