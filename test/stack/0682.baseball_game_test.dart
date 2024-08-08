import 'package:leetcode/stack/0682.baseball_game.dart';
import 'package:test/test.dart';

void main() => group('', () {
      final f = Solution().calPoints;

      test('f(["5","2","C","D","+"])', () {
        expect(
          f(["5", "2", "C", "D", "+"]),
          equals(30),
        );
      });
      test('f(["1","C"])', () {
        expect(
          f(["1", "C"]),
          equals(0),
        );
      });
      test('f(["5","-2","4","C","D","9","+","+"])', () {
        expect(
          f(["5", "-2", "4", "C", "D", "9", "+", "+"]),
          equals(27),
        );
      });
    });
