import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/countries_json_text.dart';
import 'package:dart_countries_states/src/country.dart';
import 'package:dart_countries_states/src/serializers.dart';

BuiltList<Country> _allCountries() =>
    standardSerializers.deserialize(jsonDecode(countries_json),
        specifiedType: FullType(BuiltList, [FullType(Country)]));

final _countries = _allCountries();

BuiltList<Country> get allCountries => _countries;

Country getCountryBy(bool Function(Country) fun) => _countries.fold(
    null, (acc, country) => acc != null ? acc : fun(country) ? country : null);

List<Country> getCountriesBy(bool Function(Country) fun) => _countries.fold(
    List<Country>(), (acc, country) => fun(country) ? acc + [country] : acc);

nameFunc(String name) => (Country country) => country.name == name;

code2Func(String code2) => (Country country) => country.code2 == code2;

code3Func(String code3) => (Country country) => country.code3 == code3;

capitalFunc(String capital) => (Country country) => country.capital == capital;

regionFunc(String region) => (Country country) => country.region == region;

nameContainsFunc(String name) =>
    (Country country) => country.name.contains(name);

code2ContainsFunc(String code2) =>
    (Country country) => country.code2.contains(code2);

code3ContainsFunc(String code3) =>
    (Country country) => country.code3.contains(code3);

capitalContainsFunc(String capital) =>
    (Country country) => country.capital.contains(capital);

regionContainsFunc(String region) =>
    (Country country) => country.region.contains(region);

subregionFunc(String subregion) =>
    (Country country) => country.subregion == subregion;

Country getCountryByName(String name) => getCountryBy(nameFunc(name));

Country getCountryByCode2(String code2) => getCountryBy(code2Func(code2));

Country getCountryByCode3(String code3) => getCountryBy(code3Func(code3));

Country getCountryByCapital(String capital) =>
    getCountryBy(capitalFunc(capital));

List<Country> getCountriesByRegion(String region) =>
    getCountriesBy(regionFunc(region));

List<Country> getCountriesBySubregion(String subregion) =>
    getCountriesBy(subregionFunc(subregion));

List<Country> getCountriesByNameContains(String name) =>
    getCountriesBy(nameContainsFunc(name));

List<Country> getCountriesByCode2Contains(String code2) =>
    getCountriesBy(code2ContainsFunc(code2));

List<Country> getCountriesByCode3Contains(String code3) =>
    getCountriesBy(code3ContainsFunc(code3));

List<Country> getCountriesByCapitalContains(String capital) =>
    getCountriesBy(capitalContainsFunc(capital));

List<Country> getCountriesByRegionContains(String region) =>
    getCountriesBy(regionContainsFunc(region));
