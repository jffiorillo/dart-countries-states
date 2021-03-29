library country_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/serializer/serializers.dart';

import 'alpha2_codes.dart';
import 'alpha3_code.dart';
import 'currencies.dart';
import 'languages.dart';
import 'regional_blocs.dart';
import 'supported_languages.dart';

part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  Country._();

  factory Country([updates(CountryBuilder b)]) = _$Country;

  factory Country.manual({
    String? name,
    BuiltList<String>? topLevelDomain,
    Alpha2Code? alpha2Code,
    Alpha3Code? alpha3Code,
    BuiltList<String>? callingCodes,
    String? capital,
    BuiltList<String>? altSpellings,
    String? region,
    String? subregion,
    int? population,
    BuiltList<double>? latlng,
    String? demonym,
    double? area,
    double? gini,
    BuiltList<String>? timezones,
    BuiltList<String>? borders,
    String? nativeName,
    String? numericCode,
    BuiltList<Currencies>? currencies,
    BuiltList<Languages>? languages,
    BuiltMap<LanguageCode, String>? translations,
    String? flag,
    BuiltList<RegionalBlocs>? regionalBlocs,
    String? cioc,
  }) =>
      _$Country._(
        name: name,
        topLevelDomain: topLevelDomain,
        alpha2Code: alpha2Code,
        alpha3Code: alpha3Code,
        callingCodes: callingCodes,
        capital: capital,
        altSpellings: altSpellings,
        region: region,
        subregion: subregion,
        population: population,
        latlng: latlng,
        demonym: demonym,
        area: area,
        gini: gini,
        timezones: timezones,
        borders: borders,
        nativeName: nativeName,
        numericCode: numericCode,
        currencies: currencies,
        languages: languages,
        translations: translations,
        flag: flag,
        regionalBlocs: regionalBlocs,
        cioc: cioc,
      );

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'topLevelDomain')
  BuiltList<String>? get topLevelDomain;

  @BuiltValueField(wireName: 'alpha2Code')
  Alpha2Code? get alpha2Code;

  @BuiltValueField(wireName: 'alpha3Code')
  Alpha3Code? get alpha3Code;

  @BuiltValueField(wireName: 'callingCodes')
  BuiltList<String>? get callingCodes;

  @BuiltValueField(wireName: 'capital')
  String? get capital;

  @BuiltValueField(wireName: 'altSpellings')
  BuiltList<String>? get altSpellings;

  @BuiltValueField(wireName: 'region')
  String? get region;

  @BuiltValueField(wireName: 'subregion')
  String? get subregion;

  @BuiltValueField(wireName: 'population')
  int? get population;

  @BuiltValueField(wireName: 'latlng')
  BuiltList<double>? get latlng;

  @BuiltValueField(wireName: 'demonym')
  String? get demonym;

  @BuiltValueField(wireName: 'area')
  double? get area;

  @BuiltValueField(wireName: 'gini')
  double? get gini;

  @BuiltValueField(wireName: 'timezones')
  BuiltList<String>? get timezones;

  @BuiltValueField(wireName: 'borders')
  BuiltList<String>? get borders;

  @BuiltValueField(wireName: 'nativeName')
  String? get nativeName;

  @BuiltValueField(wireName: 'numericCode')
  String? get numericCode;

  @BuiltValueField(wireName: 'currencies')
  BuiltList<Currencies>? get currencies;

  @BuiltValueField(wireName: 'languages')
  BuiltList<Languages>? get languages;

  @BuiltValueField(wireName: 'translations')
  BuiltMap<LanguageCode, String>? get translations;

  @BuiltValueField(wireName: 'flag')
  String? get flag;

  @BuiltValueField(wireName: 'regionalBlocs')
  BuiltList<RegionalBlocs>? get regionalBlocs;

  @BuiltValueField(wireName: 'cioc')
  String? get cioc;

  String toJson() => json.encode(serializers.serializeWith(Country.serializer, this));

  static Country? fromJson(String jsonString) => serializers.deserializeWith(
        Country.serializer, json.decode(jsonString));

  static Serializer<Country> get serializer => _$countrySerializer;
}
