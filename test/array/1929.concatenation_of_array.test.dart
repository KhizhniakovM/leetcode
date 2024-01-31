import 'package:leetcode/array/1929.concatenation_of_array.dart';
import 'package:test/test.dart';

void main() => group('concatenation_of_array', () {
      final f1 = SolutionV1().getConcatenation;
      final f2 = SolutionV2().getConcatenation;

      test('f1([1,2,1])', () {
        expect(
          f1([1, 2, 1]),
          equals([1, 2, 1, 1, 2, 1]),
        );
      });

      test('f1([1,3,2,1])', () {
        expect(
          f1([1, 3, 2, 1]),
          equals([1, 3, 2, 1, 1, 3, 2, 1]),
        );
      });

      test('f2([1,2,1])', () {
        expect(
          f2([1, 2, 1]),
          equals([1, 2, 1, 1, 2, 1]),
        );
      });

      test('f2([1,3,2,1])', () {
        expect(
          f2([1, 3, 2, 1]),
          equals([1, 3, 2, 1, 1, 3, 2, 1]),
        );
      });
    });
