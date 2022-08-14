import 'package:flutter_test/flutter_test.dart';
import 'package:placeholder_utils/src/utils/random/text_utils.dart';
import 'package:placeholder_utils/src/utils/random/type_utils.dart';

void main() {
  group('Random utils test', () {
    test('generated wordcount should be correct', () {
      String words = loremIpsum(words: 10);
      final wordsLenth = words.split(' ').length;
      expect(wordsLenth, 10);
    });

    test('generated future lorem should wait with given amount of time',
        () async {
      Stopwatch stopwatch = Stopwatch();
      const Duration duration = Duration(seconds: 2);
      stopwatch.start();
      final result = await futureLoremIpsum(duration: duration, words: -19);
      final wordsLenght = result.split(' ').length;
      final delta = stopwatch.elapsed;
      stopwatch.stop();
      expect(delta.inSeconds, duration.inSeconds);
      expect(wordsLenght, 1);
    });

    test('Should return a bool type', (() {
      final result = getRandomBool();
      expect(result, isA<bool>());
    }));
  });

  test('should return a value after given time', () async {
    Stopwatch stopwatch = Stopwatch();
    const Duration duration = Duration(seconds: 2);
    stopwatch.start();
    var result = await getRandomFutureBool(duration: duration);
    final delta = stopwatch.elapsed;
    stopwatch.stop();
    expect(delta.inSeconds, duration.inSeconds);
    expect(result, isA<bool>());
  });

  test(
      'return should match given number and types should be either int or double',
      () {
    final number = getDoubleOrInt(number: 100);
    expect(number, 100);
    expect(number, anyOf(100.0, 100));
  });
}
