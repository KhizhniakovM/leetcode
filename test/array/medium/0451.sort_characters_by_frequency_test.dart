import 'package:leetcode/array/medium/0451.sort_characters_by_frequency.dart';
import 'package:test/test.dart';

void main() => group('sort_characters_by_frequency', () {
      final f1 = SolutionV1().frequencySort;
      final f2 = SolutionV2().frequencySort;

      test('f1("tree")', () {
        expect(
          f1('tree'),
          equals(anyOf('eert', 'eetr')),
        );
      });
      test('f1("cccaaa")', () {
        expect(
          f1('cccaaa'),
          equals(anyOf('cccaaa', 'aaaccc')),
        );
      });
      test('f1("Aabb")', () {
        expect(
          f1('Aabb'),
          equals(anyOf('bbAa', 'bbaA')),
        );
      });
      test('f2("tree")', () {
        expect(
          f2('tree'),
          equals(anyOf('eert', 'eetr')),
        );
      });
      test('f2("cccaaa")', () {
        expect(
          f2('cccaaa'),
          equals(anyOf('cccaaa', 'aaaccc')),
        );
      });
      test('f2("Aabb")', () {
        expect(
          f2('Aabb'),
          equals(anyOf('bbAa', 'bbaA')),
        );
      });
    });
