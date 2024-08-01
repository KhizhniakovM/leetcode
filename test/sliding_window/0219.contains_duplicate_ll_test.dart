import 'package:leetcode/sliding_window/0219.contains_duplicate_ll.dart';
import 'package:test/test.dart';

void main() => group('contains_duplicate_ll', () {
      final f1 = SolutionV1().containsNearbyDuplicate;
      final f2 = SolutionV2().containsNearbyDuplicate;

      test('f1([1,2,3,1], 3)', () {
        expect(
          f1([1, 2, 3, 1], 3),
          equals(true),
        );
      });
      test('f1([1,0,1,1], 1)', () {
        expect(
          f1([1, 0, 1, 1], 1),
          equals(true),
        );
      });
      test('f1([1,2,3,1,2,3], 2)', () {
        expect(
          f1([1, 2, 3, 1, 2, 3], 2),
          equals(false),
        );
      });
      test('f2([1,2,3,1], 3)', () {
        expect(
          f2([1, 2, 3, 1], 3),
          equals(true),
        );
      });
      test('f2([1,0,1,1], 1)', () {
        expect(
          f2([1, 0, 1, 1], 1),
          equals(true),
        );
      });
      test('f2([1,2,3,1,2,3], 2)', () {
        expect(
          f2([1, 2, 3, 1, 2, 3], 2),
          equals(false),
        );
      });
    });
