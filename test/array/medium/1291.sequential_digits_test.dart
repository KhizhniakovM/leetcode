import 'package:leetcode/array/medium/1291.sequential_digits.dart';
import 'package:test/test.dart';

void main() => group('sequential_digits', () {
      final f = Solution().sequentialDigits;

      test('f(100, 300)', () {
        expect(
          f(100, 300),
          equals([123, 234]),
        );
      });
      test('f(1000, 13000)', () {
        expect(
          f(1000, 13000),
          equals([1234, 2345, 3456, 4567, 5678, 6789, 12345]),
        );
      });
    });
