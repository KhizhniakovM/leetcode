import 'package:test/scaffolding.dart';

import 'src/problem/1446.consecutive_characters_test.dart'
    as consecutive_characters;
import 'src/problem/1832.check_if_the_sentence_is_pangram_test.dart'
    as check_if_the_sentence_is_pangram;

void main() {
  group('problems /', () {
    check_if_the_sentence_is_pangram.main();
    consecutive_characters.main();
  });
}
