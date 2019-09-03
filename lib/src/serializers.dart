import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dart_countries_states/src/country.dart';
import 'package:dart_countries_states/src/state.dart';

part 'serializers.g.dart';

@SerializersFor(const [Country, State])
Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Country)]),
          () => ListBuilder<Country>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
