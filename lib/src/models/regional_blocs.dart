library regional_blocs;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models/serializers.dart';


part 'regional_blocs.g.dart';

abstract class RegionalBlocs
    implements Built<RegionalBlocs, RegionalBlocsBuilder> {
  RegionalBlocs._();

  factory RegionalBlocs([updates(RegionalBlocsBuilder b)]) = _$RegionalBlocs;

  @BuiltValueField(wireName: 'acronym')
  String get acronym;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'otherAcronyms')
  BuiltList<String> get otherAcronyms;
  @BuiltValueField(wireName: 'otherNames')
  BuiltList<String> get otherNames;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RegionalBlocs.serializer, this));
  }

  static RegionalBlocs fromJson(String jsonString) {
    return serializers.deserializeWith(
        RegionalBlocs.serializer, json.decode(jsonString));
  }

  static Serializer<RegionalBlocs> get serializer => _$regionalBlocsSerializer;
}