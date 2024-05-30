import 'package:leetcode/two_pointers/medium/0015.3sum.dart';
import 'package:test/test.dart';

void main() => group('3sum', () {
      final f = Solution().threeSum;

      test('f([-1,0,1,2,-1,-4])', () {
        expect(
          f([-1, 0, 1, 2, -1, -4]),
          equals([
            [-1, -1, 2],
            [-1, 0, 1]
          ]),
        );
      });
      test('f([0,1,1])', () {
        expect(
          f([0, 1, 1]),
          equals([]),
        );
      });
      test('f([0,0,0])', () {
        expect(
          f([0, 0, 0]),
          equals([
            [0, 0, 0]
          ]),
        );
      });
    });
