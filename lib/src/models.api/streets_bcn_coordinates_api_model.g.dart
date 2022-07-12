// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streets_bcn_coordinates_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreetsBcnCoordinatesApiModel>
    _$streetsBcnCoordinatesApiModelSerializer =
    new _$StreetsBcnCoordinatesApiModelSerializer();

class _$StreetsBcnCoordinatesApiModelSerializer
    implements StructuredSerializer<StreetsBcnCoordinatesApiModel> {
  @override
  final Iterable<Type> types = const [
    StreetsBcnCoordinatesApiModel,
    _$StreetsBcnCoordinatesApiModel
  ];
  @override
  final String wireName = 'StreetsBcnCoordinatesApiModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StreetsBcnCoordinatesApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.longitude;
    if (value != null) {
      result
        ..add('x')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('y')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('proj')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StreetsBcnCoordinatesApiModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnCoordinatesApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'x':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'y':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'proj':
          result.project = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$StreetsBcnCoordinatesApiModel extends StreetsBcnCoordinatesApiModel {
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final String? project;

  factory _$StreetsBcnCoordinatesApiModel(
          [void Function(StreetsBcnCoordinatesApiModelBuilder)? updates]) =>
      (new StreetsBcnCoordinatesApiModelBuilder()..update(updates))._build();

  _$StreetsBcnCoordinatesApiModel._(
      {this.longitude, this.latitude, this.project})
      : super._();

  @override
  StreetsBcnCoordinatesApiModel rebuild(
          void Function(StreetsBcnCoordinatesApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetsBcnCoordinatesApiModelBuilder toBuilder() =>
      new StreetsBcnCoordinatesApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreetsBcnCoordinatesApiModel &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        project == other.project;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, longitude.hashCode), latitude.hashCode), project.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreetsBcnCoordinatesApiModel')
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('project', project))
        .toString();
  }
}

class StreetsBcnCoordinatesApiModelBuilder
    implements
        Builder<StreetsBcnCoordinatesApiModel,
            StreetsBcnCoordinatesApiModelBuilder> {
  _$StreetsBcnCoordinatesApiModel? _$v;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  String? _project;
  String? get project => _$this._project;
  set project(String? project) => _$this._project = project;

  StreetsBcnCoordinatesApiModelBuilder();

  StreetsBcnCoordinatesApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _project = $v.project;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnCoordinatesApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreetsBcnCoordinatesApiModel;
  }

  @override
  void update(void Function(StreetsBcnCoordinatesApiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreetsBcnCoordinatesApiModel build() => _build();

  _$StreetsBcnCoordinatesApiModel _build() {
    final _$result = _$v ??
        new _$StreetsBcnCoordinatesApiModel._(
            longitude: longitude, latitude: latitude, project: project);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
