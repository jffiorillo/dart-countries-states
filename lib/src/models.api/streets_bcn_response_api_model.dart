import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_street_api_model.dart';

part 'streets_bcn_response_api_model.g.dart';

abstract class StreetsBcnResponseApiModel
    implements
        Built<StreetsBcnResponseApiModel, StreetsBcnResponseApiModelBuilder> {
  static Serializer<StreetsBcnResponseApiModel> get serializer =>
      _$streetsBcnResponseApiModelSerializer;

  StreetsBcnResponseApiModel._();

  factory StreetsBcnResponseApiModel(
          [void Function(StreetsBcnResponseApiModelBuilder) updates]) =
      _$StreetsBcnResponseApiModel;

  BuiltList<StreetsBcnStreetApiModel> get results;
}
