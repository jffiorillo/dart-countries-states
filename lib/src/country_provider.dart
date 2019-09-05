import 'dart:collection';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models/serializers.dart';
import 'package:http/http.dart' as http;

import 'models/country.dart';

const _endpointUrl = 'https://restcountries.eu/rest/v2/all';

class CountryProvider {
  BuiltList<Country> _cache;

  Future<BuiltList<Country>> getCountries(
      {onErrorTryCache: false, firstCache: false}) async {
    if (firstCache && cacheIsNotEmpty) return Future.value(_cache);
    var response = await http.get(_endpointUrl);
    if (response.statusCode == 200) {
      var countries = standardSerializers.deserialize(jsonDecode(response.body),
          specifiedType: FullType(BuiltList, [FullType(Country)]));
      _cache = countries;
      return countries;
    } else if (onErrorTryCache == true && cacheIsNotEmpty) {
      return _cache;
    } else {
      return Future.error(response);
    }
  }

  bool get cacheIsEmpty => _cache == null || _cache.isEmpty;

  bool get cacheIsNotEmpty => !cacheIsEmpty;

  Future<Country> getCountryBy(
          {bool Function(Country) fun,
          bool firstCache: true,
          bool onErrorTryCache: false}) async =>
      (await getCountries(firstCache: firstCache)).fold(null,
          (acc, country) => acc != null ? acc : fun(country) ? country : null);

  Future<Iterable<Country>> getCountriesBy(
          {bool Function(Country) fun,
          bool firstCache: true,
          bool onErrorTryCache: false}) async =>
      (await getCountries(firstCache: firstCache))
          .where((country) => fun(country));

  nameFunc({String name, String lang: 'en'}) =>
      (Country country) => lang == null || lang == 'en'
          ? country.name?.toLowerCase() == name.toLowerCase()
          : country.translations[lang]?.toLowerCase() == name.toLowerCase();

  code2Func(String code2) => (Country country) =>
      country.alpha2Code.toLowerCase() == code2.toLowerCase();

  code3Func(String code3) => (Country country) =>
      country.alpha3Code.toLowerCase() == code3.toLowerCase();

  capitalFunc(String capital) => (Country country) =>
      country.capital.toLowerCase() == capital.toLowerCase();

  regionFunc(String region) =>
      (Country country) => country.region.toLowerCase() == region.toLowerCase();

  nameContainsFunc({String name, String lang}) =>
      (Country country) => lang == null || lang.toLowerCase() == 'en'
          ? country.name.toLowerCase().contains(name.toLowerCase())
          : country.translations[lang]
                  ?.toLowerCase()
                  ?.contains(name.toLowerCase()) ==
              true;

  code2ContainsFunc(String code2) => (Country country) =>
      country.alpha2Code.toLowerCase().contains(code2.toLowerCase());

  code3ContainsFunc(String code3) => (Country country) =>
      country.alpha3Code.toLowerCase().contains(code3.toLowerCase());

  capitalContainsFunc(String capital) => (Country country) =>
      country.capital.toLowerCase().contains(capital.toLowerCase());

  regionContainsFunc(String region) => (Country country) =>
      country.region.toLowerCase().contains(region.toLowerCase());

  subregionFunc(String subregion) => (Country country) =>
      country.subregion.toLowerCase() == subregion.toLowerCase();

  Future<Country> getCountryByName(
          {String name, lang, firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(
          fun: nameFunc(name: name, lang: lang),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Country> getCountryByCode2(
          {String code2, firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(
          fun: code2Func(code2),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Country> getCountryByCode3(
          {String code3, firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(
          fun: code3Func(code3),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Country> getCountryByCapital(
          {String capital, firstCache: true, bool onErrorTryCache: false}) =>
      getCountryBy(
          fun: capitalFunc(capital),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByRegion(
          {String region, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: regionFunc(region),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesBySubregion(
          {String subregion, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: subregionFunc(subregion),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByNameContains(
          {String name, lang, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: nameContainsFunc(name: name, lang: lang),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByCode2Contains(
          {String code2, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: code2ContainsFunc(code2),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByCode3Contains(
          {String code3, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: code3ContainsFunc(code3),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByCapitalContains(
          {String capital, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: capitalContainsFunc(capital),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  Future<Iterable<Country>> getCountriesByRegionContains(
          {String region, firstCache: true, bool onErrorTryCache: false}) =>
      getCountriesBy(
          fun: regionContainsFunc(region),
          firstCache: firstCache,
          onErrorTryCache: onErrorTryCache);

  cleanCache() => _cache = null;
}
