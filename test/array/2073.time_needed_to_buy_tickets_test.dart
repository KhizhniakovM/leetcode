import 'package:leetcode/array/2073.time_needed_to_buy_tickets.dart';
import 'package:test/test.dart';

void main() => group('time_needed_to_buy_tickets', () {
      final f1 = SolutionV1().timeRequiredToBuy;
      final f2 = SolutionV2().timeRequiredToBuy;

      test('f1([2,3,2], 2)', () {
        expect(
          f1([2, 3, 2], 2),
          equals(6),
        );
      });
      test('f1([5,1,1,1], 0)', () {
        expect(
          f1([5, 1, 1, 1], 0),
          equals(8),
        );
      });
      test('f2([2,3,2], 2)', () {
        expect(
          f2([2, 3, 2], 2),
          equals(6),
        );
      });
      test('f2([5,1,1,1], 0)', () {
        expect(
          f2([5, 1, 1, 1], 0),
          equals(8),
        );
      });
    });
