import 'package:leetcode/array/medium/2405.optimal_partition_of_string.dart';
import 'package:test/test.dart';

void main() => group('optimal_partition_of_string', () {
      final f = Solution().partitionString;

      test('f("abacaba")', () {
        expect(
          f('abacaba'),
          equals(4),
        );
      });
      test('f("ssssss")', () {
        expect(
          f('ssssss'),
          equals(6),
        );
      });
    });
