import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/models/supported_languages.dart';
import 'package:dart_countries_states/src/serializer/serializers.dart';
import 'package:http/http.dart' as http;

import 'models/alpha2_codes.dart';
import 'models/alpha3_code.dart';
import 'models/country.dart';

const _endpointUrl = 'https://restcountries.eu/rest/v2/all';

class CountryProvider {
  BuiltList<Country>? _cache;

  Future<BuiltList<Country>?> getCountries(
      {onErrorTryCache: false, firstCache: false}) async {
    if (firstCache && cacheIsNotEmpty) return Future.value(_cache);
    var response = await http.get(Uri.parse(_endpointUrl));
    if (response.statusCode == 200) {
      var countries = standardSerializers.deserialize(jsonDecode(response.body),
              specifiedType: FullType(BuiltList, [FullType(Country)]))
          as BuiltList<Country>?;
      _cache = countries;
      return _cache;
    } else if (onErrorTryCache == true && cacheIsNotEmpty) {
      return _cache;
    } else {
      return Future.error(response);
    }
  }

  bool get cacheIsEmpty => _cache?.isEmpty != false;

  bool get cacheIsNotEmpty => !cacheIsEmpty;

  Future<Country?> getCountryBy(bool Function(Country) fun,
          {bool firstCache: true, bool onErrorTryCache: false}) async =>
      (await getCountries(firstCache: firstCache))?.fold(
          null,
          (acc, country) => acc != null
              ? acc
              : fun(country)
                  ? country
                  : null);

  Future<Iterable<Country>?> getCountriesBy(bool Function(Country) fun,
          {bool firstCache: true, bool onErrorTryCache: false}) async =>
      (await getCountries(firstCache: firstCache))
          ?.where((country) => fun(country));

  nameFunc(String name, {LanguageCode? lang}) =>
      (Country country) => lang == null
          ? country.name?.toLowerCase() == name.toLowerCase()
          : country.translations?[lang]?.toLowerCase() == name.toLowerCase();

  code2Func(Alpha2Code? code2) =>
      (Country country) => country.alpha2Code == code2;

  code3Func(Alpha3Code? code3) =>
      (Country country) => country.alpha3Code == code3;

  capitalFunc(String capital) => (Country country) =>
      country.capital?.toLowerCase() == capital.toLowerCase();

  regionFunc(String region) => (Country country) =>
      country.region?.toLowerCase() == region.toLowerCase();

  nameContainsFunc(String name, {String? lang}) =>
      (Country country) => lang == null || lang.toLowerCase() == 'en'
          ? country.name?.toLowerCase().contains(name.toLowerCase()) == true
          : country.translations?[lang]
                  ?.toLowerCase()
                  .contains(name.toLowerCase()) ==
              true;

  capitalContainsFunc(String capital) => (Country country) =>
      country.capital?.toLowerCase().contains(capital.toLowerCase()) == true;

  regionContainsFunc(String region) => (Country country) =>
      country.region?.toLowerCase().contains(region.toLowerCase()) == true;

  subregionFunc(String subregion) => (Country country) =>
      country.subregion?.toLowerCase() == subregion.toLowerCase();

  Future<Country?> getCountryByName(String name,
          {LanguageCode? lang,
          firstCache: true,
          bool onErrorTryCache: false}) =>
      getCountryBy(nameFunc(name, lang: lang),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Country?> getCountryByCode2(
          {Alpha2Code? code2, firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(code2Func(code2),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Country?> getCountryByCode3(
          {Alpha3Code? code3,
          firstCache: true,
          bool onErrorTryCache: false}) async =>
      getCountryBy(code3Func(code3),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Country?> getCountryByCapital(String capital,
          {firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(capitalFunc(capital),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>?> getCountriesByRegion(String region,
          {firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(regionFunc(region),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>?> getCountriesBySubregion(String subregion,
          {firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(subregionFunc(subregion),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>?> getCountriesByNameContains(String name,
          {String? lang, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(nameContainsFunc(name, lang: lang),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>?> getCountriesByCapitalContains(String capital,
          {firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(capitalContainsFunc(capital),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>?> getCountriesByRegionContains(String region,
          {firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(regionContainsFunc(region),
          firstCache: firstCache, onErrorTryCache: onErrorTryCache);

  cleanCache() => _cache = null;
}
