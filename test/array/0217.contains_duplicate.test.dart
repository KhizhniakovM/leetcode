import 'package:leetcode/array/0217.contains_duplicate.dart';
import 'package:test/test.dart';

void main() => group('contains_duplicate', () {
      final f1 = SolutionV1().containsDuplicate;
      final f2 = SolutionV2().containsDuplicate;

      test('f1([1,2,3,1])', () {
        expect(
          f1([1, 2, 3, 1]),
          equals(true),
        );
      });

      test('f1([1,2,3,4])', () {
        expect(
          f1([1, 2, 3, 4]),
          equals(false),
        );
      });

      test('f1([1,1,1,3,3,4,3,2,4,2])', () {
        expect(
          f1([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]),
          equals(true),
        );
      });

      test('f2([1,2,3,1])', () {
        expect(
          f2([1, 2, 3, 1]),
          equals(true),
        );
      });

      test('f2([1,2,3,4])', () {
        expect(
          f2([1, 2, 3, 4]),
          equals(false),
        );
      });

      test('f2([1,1,1,3,3,4,3,2,4,2])', () {
        expect(
          f2([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]),
          equals(true),
        );
      });
    });
