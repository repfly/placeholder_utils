import 'package:flutter_test/flutter_test.dart';
import 'package:placeholder_utils/src/utils/random/placeholder_user.dart';

void main() {
  group('Model test', () {
    test('created user should return releated values correctly', () {
      PlaceholderUser user = PlaceholderUser();
      user.age = '19';
      user.firstName = 'John';
      user.lastName = 'Doe';
      user.country = 'New Zeland';
      final fullName = user.fullName;
      expect(fullName, matches('John'));

      final fullAdress = user.fullAdress;
      fullAdress.replaceAll(' ', '');
      expect(fullAdress.length, greaterThan(9));
      expect(fullAdress.toLowerCase(), matches('zeland'));
    });
  });
}
