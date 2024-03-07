import 'package:leetcode/array/medium/0075.sort_colors.dart';
import 'package:test/test.dart';

void main() => group('sort_colors', () {
      final f1 = SolutionV1().sortColors;
      final f2 = SolutionV2().sortColors;

      test('f1([2,0,2,1,1,0])', () {
        final nums = [2, 0, 2, 1, 1, 0];
        f1(nums);

        expect(nums, equals([0, 0, 1, 1, 2, 2]));
      });

      test('f1([2,0,1])', () {
        final nums = [2, 0, 1];
        f1(nums);

        expect(nums, equals([0, 1, 2]));
      });

      test('f2([2,0,2,1,1,0])', () {
        final nums = [2, 0, 2, 1, 1, 0];
        f2(nums);

        expect(nums, equals([0, 0, 1, 1, 2, 2]));
      });

      test('f2([2,0,1])', () {
        final nums = [2, 0, 1];
        f2(nums);

        expect(nums, equals([0, 1, 2]));
      });
    });
