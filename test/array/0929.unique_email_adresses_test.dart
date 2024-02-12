import 'package:leetcode/array/0929.unique_email_adresses.dart';
import 'package:test/test.dart';

void main() => group('unique_email_adresses', () {
      final f = Solution().numUniqueEmails;

      test(
          'f(["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"])',
          () {
        expect(
          f([
            "test.email+alex@leetcode.com",
            "test.e.mail+bob.cathy@leetcode.com",
            "testemail+david@lee.tcode.com",
          ]),
          equals(2),
        );
      });
      test('f(["a@leetcode.com","b@leetcode.com","c@leetcode.com"])', () {
        expect(
          f(["a@leetcode.com", "b@leetcode.com", "c@leetcode.com"]),
          equals(3),
        );
      });
    });
