import 'package:leetcode/array/1189.maximum_numbers_of_balloons.dart';
import 'package:test/test.dart';

void main() => group('maximum_numbers_of_balloons', () {
      final f = Solution().maxNumberOfBalloons;

      test('f("nlaebolko")', () {
        expect(
          f('nlaebolko'),
          equals(1),
        );
      });
      test('f("loonbalxballpoon")', () {
        expect(
          f('loonbalxballpoon'),
          equals(2),
        );
      });
      test('f("leetcode")', () {
        expect(
          f('leetcode'),
          equals(0),
        );
      });
    });
