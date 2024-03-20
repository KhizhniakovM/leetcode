import 'package:leetcode/array/medium/2017.grid_game.dart';
import 'package:test/test.dart';

void main() => group('grid_game', () {
      final f = Solution().gridGame;

      test('f([[2,5,4],[1,5,1]])', () {
        expect(
          f([
            [2, 5, 4],
            [1, 5, 1]
          ]),
          equals(4),
        );
      });
      test('f([[3,3,1],[8,5,2]])', () {
        expect(
          f([
            [3, 3, 1],
            [8, 5, 2]
          ]),
          equals(4),
        );
      });
      test('f([[1,3,1,15],[1,3,3,1]])', () {
        expect(
          f([
            [1, 3, 1, 15],
            [1, 3, 3, 1]
          ]),
          equals(7),
        );
      });
      test('f([[20,3,20,17,2,12,15,17,4,15],[20,10,13,14,15,5,2,3,14,3]])', () {
        expect(
          f([
            [20, 3, 20, 17, 2, 12, 15, 17, 4, 15],
            [20, 10, 13, 14, 15, 5, 2, 3, 14, 3]
          ]),
          equals(63),
        );
      });
    });
