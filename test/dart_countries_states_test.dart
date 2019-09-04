import 'package:dart_countries_states/src/countries.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should read all countries', () {
    var countries = allCountries;

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

  test("should provider contries by region", () {
    var countries = getCountriesByRegion("Americas");

    expect(countries.length, 57);
  });

  test("should provider contries by subregion", () {
    var countries = getCountriesBySubregion("Western Africa");

    expect(countries.length, 17);
  });

  test("should provider contries by name contains", () {
    var countries = getCountriesByNameContains("Au");

    expect(countries.length, 2);
  });

  test("should provider contries by region contains", () {
    var countries = getCountriesByRegionContains("A");

    expect(countries.length, 167);
  });
}
