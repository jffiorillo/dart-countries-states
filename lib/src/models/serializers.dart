import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dart_countries_states/src/models/currencies.dart';
import 'package:dart_countries_states/src/models/languages.dart';
import 'package:dart_countries_states/src/models/regional_blocs.dart';
import 'package:dart_countries_states/src/models/remove_null_serializer.dart';

import 'country.dart';

part 'serializers.g.dart';

@SerializersFor(
    const [Country, Currencies, Languages, RegionalBlocs])
Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Country)]),
          () => ListBuilder<Country>())
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(RemoveNullInMapConvertedListPlugin()))
    .build();
