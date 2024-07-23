import 'package:leetcode/two_pointers/0455.assign_cookies.dart';
import 'package:test/test.dart';

void main() => group('assign_cookies', () {
      final f = Solution().findContentChildren;

      test('f([1,2,3], [1,1])', () {
        expect(
          f([1, 2, 3], [1, 1]),
          equals(1),
        );
      });
      test('f([1,2], [1,2,3])', () {
        expect(
          f([1, 2], [1, 2, 3]),
          equals(2),
        );
      });
    });
