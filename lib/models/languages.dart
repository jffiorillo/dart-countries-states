library languages;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/serializer/serializers.dart';

part 'languages.g.dart';

abstract class Languages implements Built<Languages, LanguagesBuilder> {
  Languages._();

  factory Languages([updates(LanguagesBuilder b)]) = _$Languages;

  @nullable
  @BuiltValueField(wireName: 'iso639_1')
  String get iso6391;

  @nullable
  @BuiltValueField(wireName: 'iso639_2')
  String get iso6392;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'nativeName')
  String get nativeName;

  String toJson() {
    return json.encode(serializers.serializeWith(Languages.serializer, this));
  }

  static Languages fromJson(String jsonString) {
    return serializers.deserializeWith(
        Languages.serializer, json.decode(jsonString));
  }

  static Serializer<Languages> get serializer => _$languagesSerializer;
}
