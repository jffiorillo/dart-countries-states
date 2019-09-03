import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/countries_json_text.dart';
import 'package:dart_countries_states/src/country.dart';
import 'package:dart_countries_states/src/serializers.dart';

BuiltList<Country> loadCountries() {
  var fullType = FullType(BuiltList, [FullType(Country)]);
  return standardSerializers.deserialize(jsonDecode(countries_json),
      specifiedType: fullType);
}
