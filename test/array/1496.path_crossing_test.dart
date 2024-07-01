import 'package:leetcode/array/1496.path_crossing.dart';
import 'package:test/test.dart';

void main() => group('path_crossing', () {
      final f = Solution().isPathCrossing;

      test('f("NES")', () {
        expect(
          f('NES'),
          equals(false),
        );
      });

      test('f("NESWW")', () {
        expect(
          f('NESWW'),
          equals(true),
        );
      });
    });
