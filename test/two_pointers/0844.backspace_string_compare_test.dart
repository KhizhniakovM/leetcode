import 'package:leetcode/two_pointers/0844.backspace_string_compare.dart';
import 'package:test/test.dart';

void main() => group('backspace_string_compare', () {
      final f1 = SolutionV1().backspaceCompare;
      final f2 = SolutionV2().backspaceCompare;

      test('f1("ab#c", "ad#c")', () {
        expect(
          f1("ab#c", "ad#c"),
          equals(true),
        );
      });
      test('f1("ab##", "c#d#")', () {
        expect(
          f1("ab##", "c#d#"),
          equals(true),
        );
      });
      test('f1("a#c", "b")', () {
        expect(
          f1("a#c", "b"),
          equals(false),
        );
      });
      test('f1("y#fo##f", "y#f#o##f")', () {
        expect(
          f1("y#fo##f", "y#f#o##f"),
          equals(true),
        );
      });
      test('f2("ab#c", "ad#c")', () {
        expect(
          f2("ab#c", "ad#c"),
          equals(true),
        );
      });
      test('f2("ab##", "c#d#")', () {
        expect(
          f2("ab##", "c#d#"),
          equals(true),
        );
      });
      test('f2("a#c", "b")', () {
        expect(
          f2("a#c", "b"),
          equals(false),
        );
      });
      test('f2("y#fo##f", "y#f#o##f")', () {
        expect(
          f2("y#fo##f", "y#f#o##f"),
          equals(true),
        );
      });
    });
