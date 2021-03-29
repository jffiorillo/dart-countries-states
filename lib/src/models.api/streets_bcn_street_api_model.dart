import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'streets_bcn_street_api_model.g.dart';

abstract class StreetsBcnStreetApiModel
    implements
        Built<StreetsBcnStreetApiModel, StreetsBcnStreetApiModelBuilder> {
  static Serializer<StreetsBcnStreetApiModel> get serializer =>
      _$streetsBcnStreetApiModelSerializer;

  StreetsBcnStreetApiModel._();

  factory StreetsBcnStreetApiModel(
          [void Function(StreetsBcnStreetApiModelBuilder) updates]) =
      _$StreetsBcnStreetApiModel;

  @BuiltValueField(wireName: 'Id')
  String? get id;

  @BuiltValueField(wireName: 'Value')
  String? get name;

  @BuiltValueField(wireName: 'Descripcio')
  String? get description;
}
