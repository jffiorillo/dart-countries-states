import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'streets_bcn_coordinates_api_model.g.dart';

abstract class StreetsBcnCoordinatesApiModel
    implements
        Built<StreetsBcnCoordinatesApiModel,
            StreetsBcnCoordinatesApiModelBuilder> {
  static Serializer<StreetsBcnCoordinatesApiModel> get serializer =>
      _$streetsBcnCoordinatesApiModelSerializer;

  StreetsBcnCoordinatesApiModel._();

  factory StreetsBcnCoordinatesApiModel(
          [void Function(StreetsBcnCoordinatesApiModelBuilder) updates]) =
      _$StreetsBcnCoordinatesApiModel;

  @BuiltValueField(wireName: 'x')
  double? get longitude;

  @BuiltValueField(wireName: 'y')
  double? get latitude;

  @BuiltValueField(wireName: 'proj')
  String? get project;
}
