import 'package:leetcode/array/0014.longest_common_prefix.dart';
import 'package:test/test.dart';

void main() => group('longest_common_prefix', () {
      final f = Solution().longestCommonPrefix;

      test('f(["flower","flow","flight"])', () {
        expect(
          f(['flower', 'flow', 'flight']),
          equals('fl'),
        );
      });

      test('f(["dog","racecar","car"])', () {
        expect(
          f(['dog', 'racecar', 'car']),
          equals(''),
        );
      });
    });
