library dart_countries_states;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/state.dart';

part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  static Serializer<Country> get serializer => _$countrySerializer;

  @nullable
  String get code2;

  @nullable
  String get code3;

  @nullable
  String get name;

  @nullable
  String get capital;

  @nullable
  String get region;

  @nullable
  String get subregion;

  @nullable
  BuiltList<State> get states;

  Country._();

  factory Country([void Function(CountryBuilder) updates]) = _$Country;
}
