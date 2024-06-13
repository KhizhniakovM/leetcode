import 'package:leetcode/sliding_window/0121.best_time_to_buy_and_sell_stock.dart';
import 'package:test/test.dart';

void main() => group('best_time_to_buy_and_sell_stock', () {
      final f = Solution().maxProfit;

      test('f([7,1,5,3,6,4])', () {
        expect(
          f([7, 1, 5, 3, 6, 4]),
          equals(5),
        );
      });
      test('f([7,6,4,3,1])', () {
        expect(
          f([7, 6, 4, 3, 1]),
          equals(0),
        );
      });
    });
