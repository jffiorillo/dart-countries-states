import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/models/alpha2_codes.dart';
import 'package:dart_countries_states/models/alpha3_code.dart';
import 'package:dart_countries_states/models/country.dart';
import 'package:dart_countries_states/models/currencies.dart';
import 'package:dart_countries_states/models/languages.dart';
import 'package:dart_countries_states/models/regional_blocs.dart';
import 'package:dart_countries_states/models/supported_languages.dart';
import 'package:dart_countries_states/src/serializer/remove_null_serializer.dart';

import 'custom_enum_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Country,
  Currencies,
  Languages,
  RegionalBlocs,
  LanguageCode,
  Alpha2Code,
  Alpha3Code
])
Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Country)]),
          () => ListBuilder<Country>())
      ..addPlugin(CustomEnumJsonPlugin(Set.from([LanguageCode])))
      ..addPlugin(RemoveNullInMapConvertedListPlugin()))
    .build();
