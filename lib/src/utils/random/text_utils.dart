library placeholder_utils;

import 'dart:math';

import 'package:placeholder_utils/src/utils/random/source/words.dart';

final Random _random = Random();

/// It returns a string of lorem ipsum text.
///
/// Args:
///   [paragraphs] (int): The number of paragraphs to generate. Defaults to 1 ``must be > 0``
///
///   [words] (int): The number of words to generate. Defaults to 100 ``must be > 0``
///
///   [initWithLorem] (bool): If true, the first paragraph will be "Lorem ipsum dolor sit amet".
///   Defaults to false.
String loremIpsum(
    {int paragraphs = 1, int words = 100, bool initWithLorem = false}) {
  if (paragraphs == 0 || words == 0) {
    return "";
  }

  if (paragraphs > words) {
    paragraphs = words;
  }

  String lorem = _generatePharagraph(paragraphs, words);
  if (words > 3 && initWithLorem) {
    lorem = lorem.replaceAll(lorem.split(" ")[0], "Lorem");
    lorem = lorem.replaceAll(lorem.split(" ")[1], "ipsum,");
    return lorem;
  }
  return lorem;
}

/// Same features with [loremIpsum] function. 
/// 
/// [duration] delays the return with given amount, defaults to zero. 
Future<String> futureLoremIpsum(
    {Duration duration = Duration.zero,
    int paragraphs = 1,
    int words = 100,
    bool initWithLorem = false}) async {
  await Future.delayed(duration);

  return loremIpsum(
    paragraphs: paragraphs,
    words: words,
    initWithLorem: initWithLorem,
  );
}

/// It generates a paragraph of words.
///
/// Args:
///   paragraphs (int): The number of paragraphs to generate.
///   words (int): The number of words in each paragraph.
String _generatePharagraph(int paragraphs, int words) {
  int wordLength = words ~/ paragraphs;
  List<String> result = [];

  for (int i = 0; i < paragraphs - 1; i++) {
    result.add(_createParagraph(wordLength));
  }
  result.add(_createParagraph(wordLength + (words % paragraphs)));
  return result.join("\n\n");
}

/// It creates a paragraph of text with the specified number of words
///
/// Args:
///   words (int): The number of words to generate.
String _createParagraph(int words) {
  int remain = words;
  List<String> result = [];
  if (words == 1) {
    return _createSentence(1);
  }

  while (remain > 0) {
    int length = _randomInt(2, min(10, remain));
    if (remain - length < 2) {
      length = remain;
    }

    result.add(_createSentence(length));
    remain -= length;
  }
  return result.join(" ");
}

String _createSentence(int words) {
  List<String> result = [];
  int commas = 0;
  bool lastWasComma = false;
  for (int i = 0; i < words; i++) {
    String nextWord = _createWord();
    if (lastWasComma) {
      lastWasComma = false;
    } else if (i != (words - 1) && commas < 2) {
      int n = _randomInt(1, 7);
      if (n == 1) {
        nextWord += ",";
        commas++;
        lastWasComma = true;
      }
    }
    result.add(nextWord);
  }
  result[0] = result[0].substring(0, 1).toUpperCase() + result[0].substring(1);
  return "${result.join(" ")}.";
}

String _createWord() {
  int n = _random.nextInt(2);
  String chosen;
  do {
    chosen = wordList[_random.nextInt(wordList.length)];
  } while (n > 0 && chosen.length > 5);
  return chosen;
}

_randomInt(int min, int max) {
  return _random.nextInt((max - min) + 1) + min;
}
