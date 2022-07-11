// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streets_bcn_street_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreetsBcnStreetApiModel> _$streetsBcnStreetApiModelSerializer =
    new _$StreetsBcnStreetApiModelSerializer();

class _$StreetsBcnStreetApiModelSerializer
    implements StructuredSerializer<StreetsBcnStreetApiModel> {
  @override
  final Iterable<Type> types = const [
    StreetsBcnStreetApiModel,
    _$StreetsBcnStreetApiModel
  ];
  @override
  final String wireName = 'StreetsBcnStreetApiModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StreetsBcnStreetApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('codi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name18;
    if (value != null) {
      result
        ..add('nom18')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name27;
    if (value != null) {
      result
        ..add('nom27')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.streetType;
    if (value != null) {
      result
        ..add('tipusVia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StreetsBcnStreetTypeApiModel)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('nomLlarg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullNameWithStreetType;
    if (value != null) {
      result
        ..add('nomComplet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coordinates;
    if (value != null) {
      result
        ..add('localitzacio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StreetsBcnCoordinatesApiModel)));
    }
    return result;
  }

  @override
  StreetsBcnStreetApiModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetsBcnStreetApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'codi':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nom':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nom18':
          result.name18 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nom27':
          result.name27 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipusVia':
          result.streetType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StreetsBcnStreetTypeApiModel))!
              as StreetsBcnStreetTypeApiModel);
          break;
        case 'nomLlarg':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nomComplet':
          result.fullNameWithStreetType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'localitzacio':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StreetsBcnCoordinatesApiModel))!
              as StreetsBcnCoordinatesApiModel);
          break;
      }
    }

    return result.build();
  }
}

class _$StreetsBcnStreetApiModel extends StreetsBcnStreetApiModel {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? name18;
  @override
  final String? name27;
  @override
  final StreetsBcnStreetTypeApiModel? streetType;
  @override
  final String? fullName;
  @override
  final String? fullNameWithStreetType;
  @override
  final StreetsBcnCoordinatesApiModel? coordinates;

  factory _$StreetsBcnStreetApiModel(
          [void Function(StreetsBcnStreetApiModelBuilder)? updates]) =>
      (new StreetsBcnStreetApiModelBuilder()..update(updates))._build();

  _$StreetsBcnStreetApiModel._(
      {this.id,
      this.name,
      this.name18,
      this.name27,
      this.streetType,
      this.fullName,
      this.fullNameWithStreetType,
      this.coordinates})
      : super._();

  @override
  StreetsBcnStreetApiModel rebuild(
          void Function(StreetsBcnStreetApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetsBcnStreetApiModelBuilder toBuilder() =>
      new StreetsBcnStreetApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreetsBcnStreetApiModel &&
        id == other.id &&
        name == other.name &&
        name18 == other.name18 &&
        name27 == other.name27 &&
        streetType == other.streetType &&
        fullName == other.fullName &&
        fullNameWithStreetType == other.fullNameWithStreetType &&
        coordinates == other.coordinates;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            name18.hashCode),
                        name27.hashCode),
                    streetType.hashCode),
                fullName.hashCode),
            fullNameWithStreetType.hashCode),
        coordinates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreetsBcnStreetApiModel')
          ..add('id', id)
          ..add('name', name)
          ..add('name18', name18)
          ..add('name27', name27)
          ..add('streetType', streetType)
          ..add('fullName', fullName)
          ..add('fullNameWithStreetType', fullNameWithStreetType)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class StreetsBcnStreetApiModelBuilder
    implements
        Builder<StreetsBcnStreetApiModel, StreetsBcnStreetApiModelBuilder> {
  _$StreetsBcnStreetApiModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _name18;
  String? get name18 => _$this._name18;
  set name18(String? name18) => _$this._name18 = name18;

  String? _name27;
  String? get name27 => _$this._name27;
  set name27(String? name27) => _$this._name27 = name27;

  StreetsBcnStreetTypeApiModelBuilder? _streetType;
  StreetsBcnStreetTypeApiModelBuilder get streetType =>
      _$this._streetType ??= new StreetsBcnStreetTypeApiModelBuilder();
  set streetType(StreetsBcnStreetTypeApiModelBuilder? streetType) =>
      _$this._streetType = streetType;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _fullNameWithStreetType;
  String? get fullNameWithStreetType => _$this._fullNameWithStreetType;
  set fullNameWithStreetType(String? fullNameWithStreetType) =>
      _$this._fullNameWithStreetType = fullNameWithStreetType;

  StreetsBcnCoordinatesApiModelBuilder? _coordinates;
  StreetsBcnCoordinatesApiModelBuilder get coordinates =>
      _$this._coordinates ??= new StreetsBcnCoordinatesApiModelBuilder();
  set coordinates(StreetsBcnCoordinatesApiModelBuilder? coordinates) =>
      _$this._coordinates = coordinates;

  StreetsBcnStreetApiModelBuilder();

  StreetsBcnStreetApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _name18 = $v.name18;
      _name27 = $v.name27;
      _streetType = $v.streetType?.toBuilder();
      _fullName = $v.fullName;
      _fullNameWithStreetType = $v.fullNameWithStreetType;
      _coordinates = $v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreetsBcnStreetApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreetsBcnStreetApiModel;
  }

  @override
  void update(void Function(StreetsBcnStreetApiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreetsBcnStreetApiModel build() => _build();

  _$StreetsBcnStreetApiModel _build() {
    _$StreetsBcnStreetApiModel _$result;
    try {
      _$result = _$v ??
          new _$StreetsBcnStreetApiModel._(
              id: id,
              name: name,
              name18: name18,
              name27: name27,
              streetType: _streetType?.build(),
              fullName: fullName,
              fullNameWithStreetType: fullNameWithStreetType,
              coordinates: _coordinates?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'streetType';
        _streetType?.build();

        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StreetsBcnStreetApiModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
