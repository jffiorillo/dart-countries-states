import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'streets_bcn_street_type_api_model.g.dart';

abstract class StreetsBcnStreetTypeApiModel
    implements
        Built<StreetsBcnStreetTypeApiModel, StreetsBcnStreetTypeApiModelBuilder> {
  static Serializer<StreetsBcnStreetTypeApiModel> get serializer =>
      _$streetsBcnStreetTypeApiModelSerializer;

  StreetsBcnStreetTypeApiModel._();

  factory StreetsBcnStreetTypeApiModel(
          [void Function(StreetsBcnStreetTypeApiModelBuilder) updates]) =
      _$StreetsBcnStreetTypeApiModel;

  @BuiltValueField(wireName: 'codi')
  String? get id;

  @BuiltValueField(wireName: 'abreviatura')
  String? get abbreviation;

  @BuiltValueField(wireName: 'nom')
  String? get name;
}
