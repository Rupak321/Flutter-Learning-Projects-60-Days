import 'dart:io';
void main() {
    String sentence = "Hari Sharanam ram narayan sharma shashtri";
    List<String> words = sentence.split(' ');
    String longestWord = words.reduce((currentlongest, currentWord) {
    return currentWord.length > currentlongest.length ? currentWord : currentlongest;
  });
int vowel = sentence.toLowerCase()
      .split('')
      .where((char) => 'aeiou'.contains(char))
      .length;
        String reversedSentence = words.reversed.join(' ');


    print("Original Sentence:  $sentence");
    print("Longest Word:       $longestWord");
    print("Vowel      $vowel");
    print("Reversed Sentence:  $reversedSentence");
}
