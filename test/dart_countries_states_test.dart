import 'package:dart_countries_states/src/countries.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should read all countries', () {
    var countries = loadCountries();

    expect(countries.length, 250);
  });
}
