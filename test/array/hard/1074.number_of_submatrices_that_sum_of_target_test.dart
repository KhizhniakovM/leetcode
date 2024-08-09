import 'package:leetcode/array/hard/1074.number_of_submatrices_that_sum_of_target.dart';
import 'package:test/test.dart';

void main() => group('number_of_submatrices_that_sum_of_target', () {
     final f = Solution().numSubmatrixSumTarget;

     test('f([[0,1,0],[1,1,1],[0,1,0]], 0)', () {
       expect(
         f([[0,1,0],[1,1,1],[0,1,0]], 0),
         equals(4),
       );
     });
     test('f([[1,-1],[-1,1]], 0)', () {
       expect(
         f([[1,-1],[-1,1]], 0),
         equals(5),
       );
     });
     test('f([[904]], 0)', () {
       expect(
         f([[904]], 0),
         equals(0),
       );
     });
   });