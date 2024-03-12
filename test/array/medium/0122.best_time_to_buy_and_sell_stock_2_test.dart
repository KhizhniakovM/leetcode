import 'package:leetcode/array/medium/0122.best_time_to_buy_and_sell_stock_2.dart';
import 'package:test/test.dart';

void main() => group('best_time_tobuy_and_sell_stock_2', () {
      final f = Solution().maxProfit;

      test('f([7,1,5,3,6,4])', () {
        expect(
          f([7, 1, 5, 3, 6, 4]),
          equals(7),
        );
      });
      test('f([1,2,3,4,5])', () {
        expect(
          f([1, 2, 3, 4, 5]),
          equals(4),
        );
      });
      test('f([7,6,4,3,1])', () {
        expect(
          f([7, 6, 4, 3, 1]),
          equals(0),
        );
      });
    });
