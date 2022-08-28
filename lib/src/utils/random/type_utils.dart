import 'dart:math';

final Random _random = Random();

/// Returns a random boolean value.
bool getRandomBool() {
  return (_random.nextInt(2) + 1).isOdd ? true : false;
}

/// Returns a Future<bool> that resolves to a random boolean value after a specified duration.
///
/// Args:
///   [duration] (Duration): The duration to wait before returning the future. Defaults to Duration.zero
Future<bool> getRandomFutureBool({Duration duration = Duration.zero}) async {
  return await Future.delayed(duration).then((_) => getRandomBool());
}

/// Returns either an [int] or [double] randomly. In some cases you need to test that when
/// another type is returned, it will continue to function as intended. Discussions are open to further use cases.
///
/// Args:
///  Optional [number] (int): The number wished to be returned. Defaults to 1.
dynamic getDoubleOrInt({int number = 1}) {
  return getRandomBool() ? number : number.toDouble();
}
