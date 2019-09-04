import 'package:dart_countries_states/src/countries.dart';
import 'package:dart_countries_states/src/models/country.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should load and parse countries', () async {
    var countries = await getCountries();

    expect(countries.length, 250);
  });

  test('should load and parse countries', () async {
    var countries = await getCountries(lang: 'es');

    expect(countries.length, 250);
  });
  test('should read all countries', () async {
    var countries = await getCountries();

    expect(250, countries.length);
  });

  test('should provide country when requested by Capital', () async {
    final country = await getCountryByCapital(capital: 'Caracas');

    expect(country.name, 'Venezuela (Bolivarian Republic of)');
  });

  test('should provide country when requested by Name', () async {
    final country = await getCountryByName(name: 'Australia');

    expect(country.alpha2Code, 'AU');
  });

  test('should provide country when requested by Region', () async {
    Iterable<Country> countries = await getCountriesByRegion(region: 'Asia');

    expect(countries.length, 50);
  });

  test('should provide country when requested by subregion', () async {
    final countries =
        await getCountriesBySubregion(subregion: 'Northern Europe');

    expect(countries.length, 16);
  });

  test('should provider contries by region', () async {
    var countries = await getCountriesByRegion(region: 'Americas');

    expect(countries.length, 57);
  });

  test('should provider contries by subregion', () async {
    var countries = await getCountriesBySubregion(subregion: 'Western Africa');

    expect(countries.length, 17);
  });

  test('should provider contries by name contains', () async {
    var countries = await getCountriesByNameContains(name: 'Au');

    expect(countries.length, 2);
  });

  test('should provider contries by region contains', () async {
    var countries = await getCountriesByRegionContains(region: 'A');

    expect(countries.length, 167);
  });

  test('should provider translations', () async {
    var countries = await getCountryByName(name: 'Brazil');

    expect(countries.translations.length, 10);
  });
}
