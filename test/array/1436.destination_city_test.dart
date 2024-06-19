import 'package:leetcode/array/1436.destination_city.dart';
import 'package:test/test.dart';

void main() => group('destination_city', () {
      final f = Solution().destCity;

      test(
          'f([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])',
          () {
        expect(
          f([
            ["London", "New York"],
            ["New York", "Lima"],
            ["Lima", "Sao Paulo"]
          ]),
          equals('Sao Paulo'),
        );
      });
      test('f([["B","C"],["D","B"],["C","A"]])', () {
        expect(
          f([
            ["B", "C"],
            ["D", "B"],
            ["C", "A"]
          ]),
          equals('A'),
        );
      });
      test('f([["A","Z"]]', () {
        expect(
          f([
            ["A", "Z"]
          ]),
          equals('Z'),
        );
      });
    });
