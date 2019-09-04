import 'dart:collection';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models/serializers.dart';
import 'package:http/http.dart' as http;

import 'models/country.dart';

const url = 'https://restcountries.eu/rest/v2/all';

HashMap<String, BuiltList<Country>> _cache = HashMap();

Future<BuiltList<Country>> getCountries(
    {lang: 'en', onErrorTryCache: false, firstCache: false}) async {
  lang = lang ?? 'en';
  if (firstCache && _cache.containsKey(lang)) return Future.value(_cache[lang]);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var countries = standardSerializers.deserialize(jsonDecode(response.body),
        specifiedType: FullType(BuiltList, [FullType(Country)]));
    _cache[lang] = countries;
    return countries;
  } else if (onErrorTryCache == true && _cache.keys.contains(lang)) {
    return _cache[lang];
  } else {
    return Future.error(response);
  }
}

Future<Country> getCountryBy(
        {bool Function(Country) fun,
        String lang,
        bool firstCache: true,
        bool onErrorTryCache: false}) async =>
    (await getCountries(lang: lang, firstCache: firstCache)).fold(null,
        (acc, country) => acc != null ? acc : fun(country) ? country : null);

Future<Iterable<Country>> getCountriesBy(
        {bool Function(Country) fun,
        String lang,
        bool firstCache: true,
        bool onErrorTryCache: false}) async =>
    (await getCountries(lang: lang, firstCache: firstCache))
        .where((country) => fun(country));

nameFunc(String name) => (Country country) => country.name == name;

code2Func(String code2) => (Country country) => country.alpha2Code == code2;

code3Func(String code3) => (Country country) => country.alpha3Code == code3;

capitalFunc(String capital) => (Country country) => country.capital == capital;

regionFunc(String region) => (Country country) => country.region == region;

nameContainsFunc(String name) =>
    (Country country) => country.name.contains(name);

code2ContainsFunc(String code2) =>
    (Country country) => country.alpha2Code.contains(code2);

code3ContainsFunc(String code3) =>
    (Country country) => country.alpha3Code.contains(code3);

capitalContainsFunc(String capital) =>
    (Country country) => country.capital.contains(capital);

regionContainsFunc(String region) =>
    (Country country) => country.region.contains(region);

subregionFunc(String subregion) =>
    (Country country) => country.subregion == subregion;

Future<Country> getCountryByName(
        {String name, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountryBy(
        fun: nameFunc(name),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Country> getCountryByCode2(
        {String code2, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountryBy(
        fun: code2Func(code2),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Country> getCountryByCode3(
        {String code3, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountryBy(
        fun: code3Func(code3),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Country> getCountryByCapital(
        {String capital,
        lang,
        firstCache: true,
        bool onErrorTryCache: false}) =>
    getCountryBy(
        fun: capitalFunc(capital),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByRegion(
        {String region, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: regionFunc(region),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesBySubregion(
        {String subregion,
        lang,
        firstCache: true,
        bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: subregionFunc(subregion),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByNameContains(
        {String name, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: nameContainsFunc(name),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByCode2Contains(
        {String code2, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: code2ContainsFunc(code2),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByCode3Contains(
        {String code3, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: code3ContainsFunc(code3),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByCapitalContains(
        {String capital,
        lang,
        firstCache: true,
        bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: capitalContainsFunc(capital),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);

Future<Iterable<Country>> getCountriesByRegionContains(
        {String region, lang, firstCache: true, bool onErrorTryCache: false}) =>
    getCountriesBy(
        fun: regionContainsFunc(region),
        lang: lang,
        firstCache: firstCache,
        onErrorTryCache: onErrorTryCache);
