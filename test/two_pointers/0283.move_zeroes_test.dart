import 'package:leetcode/two_pointers/0283.move_zeroes.dart';
import 'package:test/test.dart';

void main() => group('move_zeroes', () {
      final f = Solution().moveZeroes;

      test('f([0,1,0,3,12])', () {
        final s = [0, 1, 0, 3, 12];
        f(s);
        expect(
          s,
          equals([1, 3, 12, 0, 0]),
        );
      });
      test('f([0])', () {
        final s = [0];
        f(s);
        expect(
          s,
          equals([0]),
        );
      });
    });
