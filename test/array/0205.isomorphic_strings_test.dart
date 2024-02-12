import 'package:leetcode/array/0205.isomorphic_strings.dart';
import 'package:test/test.dart';

void main() => group('isomorphic_strings', () {
      final f1 = SolutionV1().isIsomorphic;
      final f2 = SolutionV2().isIsomorphic;

      test('f1("egg", "add")', () {
        expect(
          f1('egg', 'add'),
          equals(true),
        );
      });
      test('f1("foo", "bar")', () {
        expect(
          f1('foo', 'bar'),
          equals(false),
        );
      });
      test('f1("paper", "title")', () {
        expect(
          f1('paper', 'title'),
          equals(true),
        );
      });
      test('f1("badc", "baba")', () {
        expect(
          f1('badc', 'baba'),
          equals(false),
        );
      });
      test('f2("egg", "add")', () {
        expect(
          f2('egg', 'add'),
          equals(true),
        );
      });
      test('f2("foo", "bar")', () {
        expect(
          f2('foo', 'bar'),
          equals(false),
        );
      });
      test('f2("paper", "title")', () {
        expect(
          f2('paper', 'title'),
          equals(true),
        );
      });
      test('f2("badc", "baba")', () {
        expect(
          f2('badc', 'baba'),
          equals(false),
        );
      });
    });
