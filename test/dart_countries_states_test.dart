import 'package:dart_countries_states/src/countries.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should read all countries', () {
    var countries = loadCountries();

    expect(250, countries.length);
  });

  test('should provide country when requested by Capital', () {
    final country = getCountryByCapital("Caracas");

    expect(country.name, "Venezuela");
  });

  test('should provide country when requested by Name', () {
    final country = getCountryByName("Australia");

    expect(country.code2, "AU");
  });

  test('should provide country when requested by Region', () {
    final countries = getCountriesByRegion("Asia");

    expect(countries.length, 50);
  });

  test('should provide country when requested by subregion', () {
    final countries = getCountriesBySubregion("Northern Europe");

    expect(countries.length, 16);
  });
}
