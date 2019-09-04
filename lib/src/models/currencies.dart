library currencies;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models/serializers.dart';


part 'currencies.g.dart';

abstract class Currencies implements Built<Currencies, CurrenciesBuilder> {
  Currencies._();

  factory Currencies([updates(CurrenciesBuilder b)]) = _$Currencies;

  @nullable @BuiltValueField(wireName: 'code')
  String get code;

  @nullable @BuiltValueField(wireName: 'name')
  String get name;

  @nullable @BuiltValueField(wireName: 'symbol')
  String get symbol;

  String toJson() {
    return json.encode(serializers.serializeWith(Currencies.serializer, this));
  }

  static Currencies fromJson(String jsonString) {
    return serializers.deserializeWith(
        Currencies.serializer, json.decode(jsonString));
  }

  static Serializer<Currencies> get serializer => _$currenciesSerializer;
}
