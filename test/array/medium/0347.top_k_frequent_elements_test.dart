import 'package:leetcode/array/medium/0347.top_k_frequent_elements.dart';
import 'package:test/test.dart';

void main() => group('top_k_frequent_elements', () {
      final f1 = SolutionV1().topKFrequent;
      final f2 = SolutionV2().topKFrequent;

      test('f1([1,1,1,2,2,3], 2)', () {
        expect(
          f1([1, 1, 1, 2, 2, 3], 2),
          equals([1, 2]),
        );
      });
      test('f1([1], 1)', () {
        expect(
          f1([1], 1),
          equals([1]),
        );
      });
      test('f2([1,1,1,2,2,3], 2)', () {
        expect(
          f2([1, 1, 1, 2, 2, 3], 2),
          equals([1, 2]),
        );
      });
      test('f2([1], 1)', () {
        expect(
          f2([1], 1),
          equals([1]),
        );
      });
      test('f2([3,0,1,0], 1)', () {
        expect(
          f2([3,0,1,0], 1),
          equals([0]),
        );
      });
    });
