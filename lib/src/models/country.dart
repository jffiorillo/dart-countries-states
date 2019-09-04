library country_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models/regional_blocs.dart';
import 'package:dart_countries_states/src/models/serializers.dart';

import 'currencies.dart';
import 'languages.dart';

part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  Country._();

  factory Country([updates(CountryBuilder b)]) = _$Country;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'topLevelDomain')
  BuiltList<String> get topLevelDomain;

  @nullable
  @BuiltValueField(wireName: 'alpha2Code')
  String get alpha2Code;

  @nullable
  @BuiltValueField(wireName: 'alpha3Code')
  String get alpha3Code;

  @nullable
  @BuiltValueField(wireName: 'callingCodes')
  BuiltList<String> get callingCodes;

  @nullable
  @BuiltValueField(wireName: 'capital')
  String get capital;

  @nullable
  @BuiltValueField(wireName: 'altSpellings')
  BuiltList<String> get altSpellings;

  @nullable
  @BuiltValueField(wireName: 'region')
  String get region;

  @nullable
  @BuiltValueField(wireName: 'subregion')
  String get subregion;

  @nullable
  @BuiltValueField(wireName: 'population')
  int get population;

  @nullable
  @BuiltValueField(wireName: 'latlng')
  BuiltList<double> get latlng;

  @nullable
  @BuiltValueField(wireName: 'demonym')
  String get demonym;

  @nullable
  @BuiltValueField(wireName: 'area')
  double get area;

  @nullable
  @BuiltValueField(wireName: 'gini')
  double get gini;

  @nullable
  @BuiltValueField(wireName: 'timezones')
  BuiltList<String> get timezones;

  @nullable
  @BuiltValueField(wireName: 'borders')
  BuiltList<String> get borders;

  @nullable
  @BuiltValueField(wireName: 'nativeName')
  String get nativeName;

  @nullable
  @BuiltValueField(wireName: 'numericCode')
  String get numericCode;

  @nullable
  @BuiltValueField(wireName: 'currencies')
  BuiltList<Currencies> get currencies;

  @nullable
  @BuiltValueField(wireName: 'languages')
  BuiltList<Languages> get languages;

  @nullable
  @BuiltValueField(wireName: 'translations')
  BuiltMap<String, String> get translations;

  @nullable
  @BuiltValueField(wireName: 'flag')
  String get flag;

  @nullable
  @BuiltValueField(wireName: 'regionalBlocs')
  BuiltList<RegionalBlocs> get regionalBlocs;

  @nullable
  @BuiltValueField(wireName: 'cioc')
  String get cioc;

  String toJson() {
    return json.encode(serializers.serializeWith(Country.serializer, this));
  }

  static Country fromJson(String jsonString) {
    return serializers.deserializeWith(
        Country.serializer, json.decode(jsonString));
  }

  static Serializer<Country> get serializer => _$countrySerializer;
}
