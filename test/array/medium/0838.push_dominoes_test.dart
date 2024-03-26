import 'package:leetcode/array/medium/0838.push_dominoes.dart';
import 'package:test/test.dart';

void main() => group('push_dominoes', () {
      final f = Solution().pushDominoes;

      test('f("RR.L")', () {
        expect(
          f('RR.L'),
          equals('RR.L'),
        );
      });
      test('f(".L.R...LR..L..")', () {
        expect(
          f('.L.R...LR..L..'),
          equals('LL.RR.LLRRLL..'),
        );
      });
    });
