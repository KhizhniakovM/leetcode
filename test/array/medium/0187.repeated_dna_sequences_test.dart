import 'package:leetcode/array/medium/0187.repeated_dna_sequences.dart';
import 'package:test/test.dart';

void main() => group('repeated_dna_sequences', () {
      final f = Solution().findRepeatedDnaSequences;

      test('f("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT")', () {
        expect(
          f('AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT'),
          equals(['AAAAACCCCC', 'CCCCCAAAAA']),
        );
      });
      test('f("AAAAAAAAAAAAA")', () {
        expect(
          f('AAAAAAAAAAAAA'),
          equals(['AAAAAAAAAA']),
        );
      });
      test('f("AAAAAAAAAAA")', () {
        expect(
          f('AAAAAAAAAAA'),
          equals(['AAAAAAAAAA']),
        );
      });
    });
