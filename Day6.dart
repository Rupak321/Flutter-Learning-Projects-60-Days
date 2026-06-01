import 'dart:io';
void main() {
    String sentence = "Om namah shivaya Namah parvati patayah har har mahadev";
    String lowercasedSentence = sentence.toLowerCase();
    List<String> words = lowercasedSentence.split(' ');
    String longestWord = words.reduce((currentLongest, currentWord) {
    return currentWord.length > currentLongest.length ? currentWord : currentLongest;
  });
int vowelCount = lowercasedSentence
      .split('')
      .where((char) => 'aeiou'.contains(char))
      .length;
        String reversedSentence = words.reversed.join(' ');


    print("Original Sentence:  $sentence");
    print("Longest Word:       $longestWord");
    print("Number of Vowels:   $vowelCount");
    print("Reversed Sentence:  $reversedSentence");
}
