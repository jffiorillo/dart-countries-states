import 'package:dart_countries_states/src/country_provider.dart';
import 'package:dart_countries_states/src/models/country.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CountryProvider countryProvider;
  setUp(() {
    countryProvider = CountryProvider();
  });
  test('should load and parse countries', () async {
    var countries = await countryProvider.getCountries();

    expect(countries.length, 250);
  });

  test('should load and parse countries', () async {
    var countries = await countryProvider.getCountries();

    expect(countries.length, 250);
  });
  test('should read all countries', () async {
    var countries = await countryProvider.getCountries();

    expect(countries.length, 250);
  });

  test('should provide country when requested by Capital', () async {
    final country =
        await countryProvider.getCountryByCapital(capital: 'Caracas');

    expect(country.name, 'Venezuela (Bolivarian Republic of)');
  });

  test('should provide country when requested by Name', () async {
    final country = await countryProvider.getCountryByName(name: 'Australia');

    expect(country.alpha2Code, 'AU');
  });

  test('should provide country when requested by Region', () async {
    Iterable<Country> countries =
        await countryProvider.getCountriesByRegion(region: 'Asia');

    expect(countries.length, 50);
  });

  test('should provide country when requested by subregion', () async {
    final countries = await countryProvider.getCountriesBySubregion(
        subregion: 'Northern Europe');

    expect(countries.length, 16);
  });

  test('should provider contries by region', () async {
    var countries =
        await countryProvider.getCountriesByRegion(region: 'Americas');

    expect(countries.length, 57);
  });

  test('should provider contries by subregion', () async {
    var countries = await countryProvider.getCountriesBySubregion(
        subregion: 'Western Africa');

    expect(countries.length, 17);
  });

  test('should provider contries by name contains', () async {
    var countries =
        await countryProvider.getCountriesByNameContains(name: 'Au');

    expect(countries.length, 9);
  });

  test('should provider contries by region contains', () async {
    var countries =
        await countryProvider.getCountriesByRegionContains(region: 'A');

    expect(countries.length, 195);
  });

  test('should provider translations', () async {
    var countries = await countryProvider.getCountryByName(name: 'Brazil');

    expect(countries.translations.length, 10);
  });

  test('should provider in different languages', () async {
    var countries =
        await countryProvider.getCountryByName(name: 'Koweït', lang: 'fr');

    expect(countries.capital, 'Kuwait City');
  });
}
