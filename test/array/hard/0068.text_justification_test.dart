import 'package:leetcode/array/hard/0068.text_justification.dart';
import 'package:test/test.dart';

void main() => group('text_justification', () {
      final f = Solution().fullJustify;

      test(
          'f(["This", "is", "an", "example", "of", "text", "justification."], 16)',
          () {
        expect(
          f(
            ["This", "is", "an", "example", "of", "text", "justification."],
            16,
          ),
          equals([
            "This    is    an",
            "example  of text",
            "justification.  ",
          ]),
        );
      });
      test('f(["What","must","be","acknowledgment","shall","be"], 16)', () {
        expect(
          f(
            ["What", "must", "be", "acknowledgment", "shall", "be"],
            16,
          ),
          equals([
            "What   must   be",
            "acknowledgment  ",
            "shall be        ",
          ]),
        );
      });
      test(
          'f(["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], 20)',
          () {
        expect(
          f(
            [
              "Science",
              "is",
              "what",
              "we",
              "understand",
              "well",
              "enough",
              "to",
              "explain",
              "to",
              "a",
              "computer.",
              "Art",
              "is",
              "everything",
              "else",
              "we",
              "do"
            ],
            20,
          ),
          equals([
            "Science  is  what we",
            "understand      well",
            "enough to explain to",
            "a  computer.  Art is",
            "everything  else  we",
            "do                  "
          ]),
        );
      });
    });
