import 'package:leetcode/array/medium/0138.longest_consequtive_sequence.dart';
import 'package:test/test.dart';

void main() => group('longest_consequtive_sequence', () {
      final f = Solution().longestConsecutive;

      test('f([100,4,200,1,3,2])', () {
        expect(
          f([100, 4, 200, 1, 3, 2]),
          equals(4),
        );
      });
      test('f([0,3,7,2,5,8,4,6,0,1])', () {
        expect(
          f([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]),
          equals(9),
        );
      });
    });
