import 'package:leetcode/array/1700.number_of_students_unable_to_eat_lunch.dart';
import 'package:test/test.dart';

void main() => group('number_of_students_unable_to_eat_lunch', () {
      final f = Solution().countStudents;

      test('f([1,1,0,0], [0,1,0,1])', () {
        expect(
          f([1, 1, 0, 0], [0, 1, 0, 1]),
          equals(0),
        );
      });
      test('f([1,1,1,0,0,1], [1,0,0,0,1,1])', () {
        expect(
          f([1, 1, 1, 0, 0, 1], [1, 0, 0, 0, 1, 1]),
          equals(3),
        );
      });
    });
