import 'package:leetcode/array/0028.find_the_index_of_the_first_occurence_in_the_string.dart';
import 'package:test/test.dart';

void main() => group('find_the_index_of_the_first_occurence_in_the_string', () {
      final f1 = SolutionV1().strStr;
      final f2 = SolutionV1().strStr;

      test('f1("sadbutsad", "sad")', () {
        expect(
          f1('sadbutsad', 'sad'),
          equals(0),
        );
      });
      test('f1("leetcode", "leeto")', () {
        expect(
          f1('leetcode', 'leeto'),
          equals(-1),
        );
      });
      test('f1("mississippi", "issip")', () {
        expect(
          f1('mississippi', 'issip'),
          equals(4),
        );
      });
      test('f2("sadbutsad", "sad")', () {
        expect(
          f2('sadbutsad', 'sad'),
          equals(0),
        );
      });
      test('f2("leetcode", "leeto")', () {
        expect(
          f2('leetcode', 'leeto'),
          equals(-1),
        );
      });
      test('f2("mississippi", "issip")', () {
        expect(
          f2('mississippi', 'issip'),
          equals(4),
        );
      });
    });
