import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_coordinates_api_model.dart';
import 'package:dart_countries_states/src/models.api/streets_bcn_street_type_api_model.dart';

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

  @BuiltValueField(wireName: 'codi')
  String? get id;

  @BuiltValueField(wireName: 'nom')
  String? get name;

  @BuiltValueField(wireName: 'nom18')
  String? get name18;

  @BuiltValueField(wireName: 'nom27')
  String? get name27;

  @BuiltValueField(wireName: 'tipusVia')
  StreetsBcnStreetTypeApiModel? get streetType;

  @BuiltValueField(wireName: 'nomLlarg')
  String? get fullName;

  @BuiltValueField(wireName: 'nomComplet')
  String? get fullNameWithStreetType;

  @BuiltValueField(wireName: 'localitzacio')
  StreetsBcnCoordinatesApiModel? get coordinates;
}
